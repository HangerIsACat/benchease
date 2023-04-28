package codev.synergy.entities;

public class Skill extends Entity{

    private String title;
    private boolean isApproved;
    private int searchCount = 0;

    public Skill(Long id, String title) {
        this.setId(id);
        this.title = title;
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
