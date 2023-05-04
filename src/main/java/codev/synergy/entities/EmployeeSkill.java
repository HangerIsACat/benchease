package codev.synergy.entities;


public class EmployeeSkill extends Skill {
    private String type;

    public EmployeeSkill(String id, String title, String type) {
        super(id, title);
        this.setType(type);
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

}
