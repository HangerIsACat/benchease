package codev.synergy.controllers;

import codev.synergy.entities.Skill;
import codev.synergy.handlers.ResponseHandler;
import codev.synergy.services.SkillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;
import java.util.Optional;

@RestController
@RequestMapping("/benchease/v1/hotskills")
public class HotSkillController {

    @Autowired
    private SkillService serviceSkill;

    @GetMapping
    public ResponseEntity<Map<String, Object>> getHotSkills(@RequestParam Optional<Integer> count) {
        try {

            int noOfSkills = count.orElseGet(() -> SkillService.DEFAULT_HOT_SKILL_COUNT);
            ResponseHandler<List<Skill>> responseHandler
                = new ResponseHandler<>(serviceSkill.getTopSkills(noOfSkills));

            return responseHandler.buildResponse(ResponseHandler.MSG_SUCCESS, HttpStatus.OK);

        } catch(Exception e) {
            return new ResponseHandler<>(e)
               .buildResponse(
                   ResponseHandler.MSG_FAIL,
                   HttpStatus.INTERNAL_SERVER_ERROR);
        }

    }

}
