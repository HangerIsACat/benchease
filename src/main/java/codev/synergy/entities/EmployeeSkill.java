package codev.synergy.entities;


import java.util.Date;

public class EmployeeSkill extends Skill {
    private String category;

    public EmployeeSkill(String title) {
        super(title);
    }
    public EmployeeSkill(String id, String title, String category) {
        super(id, title);
        this.setCategory(category);
    }

    public EmployeeSkill(
        String id,
        String title,
        boolean isApproved,
        String category,
        Date createdAt,
        String createdBy,
        Date updatedAt,
        String updatedBy) {

        super(id, title, 0, isApproved, createdAt, createdBy, updatedAt, updatedBy);
        this.setCategory(category);
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

}
