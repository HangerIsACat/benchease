package codev.synergy.services;

import codev.synergy.entities.Employee;
import codev.synergy.entities.BenchEmployee;
import codev.synergy.entities.Skill;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.stream.Collectors;

@Component
public class EmployeeService {

    @Autowired
    SkillService skillService;

    @Autowired
    NamedParameterJdbcTemplate jdbcTemplate;

    public List<Employee> searchEmployeesBySkill(List<Skill> skills) {

        List<String> skillIDs = skills.stream().map(Skill::getId).collect(Collectors.toList());
        SqlParameterSource params = new MapSqlParameterSource("skillIDs", skillIDs);

        List<Employee> employees = jdbcTemplate.query(
                "SELECT " +
                        "DISTINCT a.id, " +
                        "a.employee_id, " +
                        "a.first_name, " +
                        "a.middle_name, " +
                        "a.last_name, " +
                        "a.email, " +
                        "a.status, " +
                        "a.is_new, " +
                        "a.created_at, " +
                        "a.created_by, " +
                        "a.updated_at, " +
                        "a.updated_by " +
                        "FROM users a " +
                        "INNER JOIN user_skills b " +
                        "ON a.id = b.user_id " +
                        "WHERE a.type = 'employee' " +
                        "AND b.skill_id IN (:skillIDs);",
                params,
                new RowMapper<Employee>() {
                    @Override
                    public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {

                        Employee employee = new Employee(
                            rs.getString("id"),
                            rs.getString("employee_id"),
                            rs.getString("first_name"),
                            rs.getString("middle_name"),
                            rs.getString("last_name"),
                            rs.getString("email"),
                            rs.getInt("status"),
                            rs.getBoolean("is_new"));

                        employee.setCreatedAt(rs.getDate("created_at"));
                        employee.setCreatedBy(rs.getString("created_by"));
                        employee.setUpdatedAt(rs.getDate("updated_at"));
                        employee.setUpdatedBy(rs.getString("updated_by"));

                        return employee;

                    }
                }
        );

        return employees;

    }

    public BenchEmployee convertToBenchEmployee(Employee employee) {

        BenchEmployee benchEmployee = new BenchEmployee(
            employee,
            skillService.getEmployeeSkills(employee)
        );

        benchEmployee.setCreatedAt(employee.getCreatedAt());
        benchEmployee.setCreatedBy(employee.getCreatedBy());
        benchEmployee.setUpdatedAt(employee.getUpdatedAt());
        benchEmployee.setUpdatedBy(employee.getUpdatedBy());

        return benchEmployee;

    }

}
