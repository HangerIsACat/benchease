package codev.synergy.controllers;

import codev.synergy.entities.BenchEmployee;
import codev.synergy.entities.Employee;
import codev.synergy.entities.Skill;
import codev.synergy.handlers.ResponseHandler;
import codev.synergy.services.EmployeeService;
import codev.synergy.services.SkillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/benchease/v1/search")
public class SeachController {

    @Autowired
    private SkillService skillService;

    @Autowired
    private EmployeeService employeeService;

    @GetMapping("/employees")
    public ResponseEntity<Map<String, Object>> searchEmployeesBySkill(@RequestParam List<String> skillTitles) {

        // Get existing skills
        List<Skill> skills = skillService.getSkills(skillTitles);

        // TODO: Add search to DB for search count

        // Get employees who has the skill
        List<Employee> employees = employeeService.searchEmployeesBySkill(skills);

        List<BenchEmployee> benchEmployees = employees.stream().map(
            employee -> employeeService.convertToBenchEmployee(employee, skills)
        ).collect(Collectors.toList());

        ResponseHandler<List<BenchEmployee>> responseHandler = new ResponseHandler<>(benchEmployees);

        return responseHandler.buildResponse(ResponseHandler.MSG_SUCCESS, HttpStatus.OK);

    }

}
