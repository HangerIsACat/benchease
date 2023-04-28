package codev.synergy.controllers;

import codev.synergy.entities.Skill;
import codev.synergy.services.HotSkillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/benchease/v1/hotskills")
public class HotSkillController {

    private int DEFAULT_HOT_SKILL_COUNT = 5;

    @GetMapping
    public ResponseEntity<List<Skill>> getHotSkills(@RequestParam Optional<Integer> count) {

        List<Skill> skills = new ArrayList<>();

        int noOfSkills = count.isPresent() ? count.get() : DEFAULT_HOT_SKILL_COUNT;
        for (int i = 0; i < noOfSkills; i++) {
            Skill skill = new Skill( (long) i + 1, "Skill " + (i + 1) );
            skill.incrementSearchCount();
            skill.incrementSearchCount();
            skill.incrementSearchCount();

            skills.add(skill);
        }

        return ResponseEntity.ok(skills);

    }

}
