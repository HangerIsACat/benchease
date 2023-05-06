package codev.synergy.entities;

import java.util.Date;

public class SkillSearched extends Entity {

    private Skill skill;

    public SkillSearched(String skillTitle, String skillID, Date createdAt) {
        this.setSkill(new Skill(skillID, skillTitle));
        this.setCreatedAt(createdAt);
    }

    public SkillSearched(String skillTitle, String skillID) {
        this.setSkill(new Skill(skillID, skillTitle));
        this.setCreatedAt(new Date());
    }
    public SkillSearched(Skill skill) {
        this.setSkill(skill);
        this.setCreatedAt(new Date());
    }
    public Skill getSkill() {
        return skill;
    }

    public void setSkill(Skill skill) {
        this.skill = skill;
    }
}
