package codev.synergy.entities;

import java.util.Date;

public class Skill extends Entity{

    private String title;
    private boolean isApproved = false;
    private int searchCount = 0;

    protected Skill() {}

    public Skill(String title) {
        this.title = title;
    }
    public Skill(String id, String title) {
        this(title);
        this.setId(id);
    }

    public Skill(String id, String title, int searchCount, boolean isApproved) {
        this(id, title);
        this.searchCount = searchCount;
        this.setApproved(isApproved);
    }

    public Skill(
        String id,
        String title,
        int searchCount,
        boolean isApproved,
        Date createdAt,
        String createdBy,
        Date updatedAt,
        String updatedBy) {

        this(id, title);
        this.searchCount = searchCount;
        this.setApproved(isApproved);

        this.setCreatedAt(createdAt);
        this.setCreatedBy(createdBy);
        this.setUpdatedAt(updatedAt);
        this.setUpdatedBy(updatedBy);
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public boolean isApproved() {
        return isApproved;
    }

    public void setApproved(boolean approved) {
        isApproved = approved;
    }

    public int getSearchCount() {
        return searchCount;
    }

    public void incrementSearchCount() {
        this.searchCount++;
    }

}
