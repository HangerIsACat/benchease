package codev.synergy.services;

import codev.synergy.entities.Skill;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class SkillService {

    public static int DEFAULT_HOT_SKILL_COUNT = 10;

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public List<Skill> getTopSkills(int noOfSkills) {

        List<Skill> skills =
            jdbcTemplate.query(
                "SELECT " +
                        "a.id, " +
                        "a.title, " +
                        "b.search_count, " +
                        "a.approved " +
                    "FROM skills a " +
                    "INNER JOIN (" +
                        "SELECT COUNT(id) AS search_count, title " +
                        "FROM skill_searches GROUP BY title " +
                        "ORDER BY search_count DESC LIMIT ?" +
                    ") b " +
                        "ON a.title = b.title " +
                    "ORDER BY b.search_count DESC;",
                new Object[]{ noOfSkills },
                (rs, rowNum) -> new Skill(
                    rs.getString("id"),
                    rs.getString("title"),
                    rs.getInt("search_count"),
                    rs.getBoolean("approved"))
            );

        return skills;

    }

}
