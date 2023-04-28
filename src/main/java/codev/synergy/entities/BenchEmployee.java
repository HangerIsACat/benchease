package codev.synergy.entities;

import java.util.List;

public class BenchEmployee extends Employee {

    private List<EmployeeSkill> skills;

    public List<EmployeeSkill> getSkills() {
        return skills;
    }

    public void addSkills(EmployeeSkill skill) {
        this.skills.add(skill);
    }

}
