package codev.synergy.services;

import codev.synergy.entities.Skill;
import codev.synergy.entities.SkillSearched;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Component;

@Component
public class SkillSearchedService {

    @Autowired
    NamedParameterJdbcTemplate jdbcTemplate;

    public SkillSearched createSkillSearch(Skill skill) {
        SkillSearched skillSearched = new SkillSearched(skill);
        return this.createSkillSearch(skillSearched);
    }
    public SkillSearched createSkillSearch(SkillSearched skillSearched) {
        SqlParameterSource params = new MapSqlParameterSource()
            .addValue("title", skillSearched.getSkill().getTitle())
            .addValue("createdAt", skillSearched.getCreatedAt());

        jdbcTemplate.update(
        "INSERT INTO skill_searches " +
            "VALUES(UUID(), :title, :createdAt, NULL);",
            params);

        return skillSearched;
    }

}
