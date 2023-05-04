package codev.synergy.controllers;

import codev.synergy.entities.BenchEmployee;
import codev.synergy.entities.EmployeeSkill;
import codev.synergy.handlers.ResponseHandler;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/benchease/v1/search")
public class SeachController {

    @GetMapping("/employees/skill/{skillTitle}")
    public ResponseEntity<Map<String, Object>> searchEmployeesBySkill(@PathVariable String skillTitle) {

        List<EmployeeSkill> skills = new ArrayList<>();
        EmployeeSkill skill = new EmployeeSkill("1-skill-id", "sample-skill-1", "primary");
        skill.setApproved(true);
        skills.add(skill);

        BenchEmployee employee = new BenchEmployee(
            "1-sample-id",
            "sampleFirstName1",
            "sampleMiddleName1",
            "sampleLastName1",
            "sample1@sample.com",
            1,
            false,
            skills);

        List<BenchEmployee> employees = Collections.singletonList(employee);

        ResponseHandler<List<BenchEmployee>> responseHandler =
            new ResponseHandler<>(employees);

        return responseHandler.buildResponse(ResponseHandler.MSG_SUCCESS, HttpStatus.OK);

    }

}
