package codev.synergy.entities;

import java.util.List;

public class BenchEmployee extends Employee {

    private List<EmployeeSkill> skills;

    public BenchEmployee(
            String id,
            String empId,
            String firstName,
            String middleName,
            String lastName,
            String email,
            int status,
            boolean isNew) {

        super(id, empId, firstName, middleName, lastName, email, status, isNew);
    }
    public BenchEmployee(
            String id,
            String empId,
            String firstName,
            String middleName,
            String lastName,
            String email,
            int status,
            boolean isNew,
            List<EmployeeSkill> skills) {

        super(id, empId, firstName, middleName, lastName, email, status, isNew);
        this.setSkills(skills);
    }

    public BenchEmployee(Employee employee, List<EmployeeSkill> skills) {
        this(
            employee.getId(),
            employee.getEmpId(),
            employee.getFirstName(),
            employee.getMiddleName(),
            employee.getLastName(),
            employee.getEmail(),
            employee.getStatus(),
            employee.isNew(),
            skills);
    }

    public List<EmployeeSkill> getSkills() {
        return skills;
    }

    public void setSkills(List<EmployeeSkill> skills) {
        this.skills = skills;
    }

    public void addSkills(EmployeeSkill skill) {
        this.skills.add(skill);
    }

}
