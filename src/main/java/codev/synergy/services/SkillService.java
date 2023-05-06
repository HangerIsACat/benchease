package codev.synergy.services;

import codev.synergy.entities.Employee;
import codev.synergy.entities.EmployeeSkill;
import codev.synergy.entities.Skill;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Collectors;

@Component
public class SkillService {

    public static int DEFAULT_HOT_SKILL_COUNT = 10;

    @Autowired
    private NamedParameterJdbcTemplate jdbcTemplate;

    public List<Skill> getTopSkills(int noOfSkills) {

        List<Skill> skills =
            jdbcTemplate.query(
                "SELECT " +
                        "a.id, " +
                        "a.title, " +
                        "b.search_count, " +
                        "a.approved, " +
                        "a.created_at, " +
                        "a.created_by, " +
                        "a.updated_at, " +
                        "a.updated_by " +
                    "FROM skills a " +
                    "INNER JOIN (" +
                        "SELECT COUNT(id) AS search_count, title " +
                        "FROM skill_searches GROUP BY title " +
                        "ORDER BY search_count DESC LIMIT :noOfSkills" +
                    ") b " +
                        "ON a.title = b.title " +
                    "ORDER BY b.search_count DESC;",
                new MapSqlParameterSource("noOfSkills", noOfSkills),
                (rs, rowNum) -> new Skill(
                    rs.getString("id"),
                    rs.getString("title"),
                    rs.getInt("search_count"),
                    rs.getBoolean("approved"),
                    rs.getDate("created_at"),
                    rs.getString("created_by"),
                    rs.getDate("updated_at"),
                    rs.getString("updated_by"))
            );

        return skills;

    }

    public List<Skill> getSkills(List<String> skillTitles) {

        List<Skill> skills = jdbcTemplate.query(
            "SELECT " +
                "a.id, " +
                "a.title, " +
                "a.approved, " +
                "a.created_at, " +
                "a.created_by, " +
                "a.updated_at, " +
                "a.updated_by " +
            "FROM skills a " +
            "WHERE a.approved = 1 " +
            "AND a.title IN (:skillTitles);",
            new MapSqlParameterSource("skillTitles", skillTitles),
            (rs, rowNum) -> new Skill(
                rs.getString("id"),
                rs.getString("title"),
                0,
                rs.getBoolean("approved"),
                rs.getDate("created_at"),
                rs.getString("created_by"),
                rs.getDate("updated_at"),
                rs.getString("updated_by"))
            );

        return skills;

    }

    public List<EmployeeSkill> getEmployeeSkills(Employee employee) {

        List<EmployeeSkill> skillsEmp = jdbcTemplate.query(
        "SELECT " +
                "b.user_id, " +
                "a.id, " +
                "a.title, " +
                "b.category, " +
                "a.approved, " +
                "a.created_at, " +
                "a.created_by, " +
                "a.updated_at, " +
                "a.updated_by " +
                "FROM skills a " +
            "INNER JOIN user_skills b " +
                "ON a.id = b.skill_id " +
            "WHERE b.user_id = :userID;",
            new MapSqlParameterSource("userID", employee.getId()),
            (rs, rowNum) -> new EmployeeSkill(
                rs.getString("id"),
                rs.getString("title"),
                rs.getBoolean("approved"),
                rs.getString("category"),
                rs.getDate("created_at"),
                rs.getString("created_by"),
                rs.getDate("updated_at"),
                rs.getString("updated_by"))
        );

        return skillsEmp;

    }

}
