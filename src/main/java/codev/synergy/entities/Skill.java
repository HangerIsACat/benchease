package codev.synergy.entities;

import java.util.Date;

public class Skill extends Entity{

    private String title;
    private boolean isApproved = false;
    private int searchCount = 0;

    protected Skill() {}

    public Skill(String id, String title) {
        this.setId(id);
        this.title = title;
    }

    public Skill(String id, String title, int searchCount, boolean isApproved) {
        this(id, title);
        this.searchCount = searchCount;
        this.setApproved(isApproved);
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
