package codev.synergy.entities;

import java.util.List;

public class BenchEmployee extends Employee {

    private List<EmployeeSkill> skills;

    public BenchEmployee(
            String empId,
            String firstName,
            String middleName,
            String lastName,
            String email,
            int status,
            boolean isNew,
            List<EmployeeSkill> skills) {

        super(empId, firstName, middleName, lastName, email, status, isNew);
        this.setSkills(skills);
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
