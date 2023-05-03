package codev.synergy.controllers;

import codev.synergy.entities.Skill;
import codev.synergy.services.SkillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/benchease/v1/hotskills")
public class HotSkillController {

    @Autowired
    private SkillService serviceSkill;

    @GetMapping
    public ResponseEntity<List<Skill>> getHotSkills(@RequestParam Optional<Integer> count) {
        int noOfSkills = count.isPresent() ? count.get() : SkillService.DEFAULT_HOT_SKILL_COUNT;
        return ResponseEntity.ok(serviceSkill.getTopSkills(noOfSkills));
    }

}
