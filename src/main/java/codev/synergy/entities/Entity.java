package codev.synergy.entities;

import org.springframework.data.annotation.Id;

import java.util.Date;

public abstract class Entity {
    @Id
    private long id;
    private String createdBy;
    private String updatedBy;
    private Date createdAt;
    private Date updatedAt;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }
}
