package codev.synergy.entities;

import java.util.Date;

public abstract class Entity {

    private String id;
    private String createdBy;
    private String updatedBy;
    private Date createdAt;
    private Date updatedAt;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
}
