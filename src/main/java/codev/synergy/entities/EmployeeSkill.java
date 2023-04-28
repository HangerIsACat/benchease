package codev.synergy.entities;

public class EmployeeSkill extends Skill {
    private String type;

    public EmployeeSkill(Long id, String title) {
        super(id, title);
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

}
