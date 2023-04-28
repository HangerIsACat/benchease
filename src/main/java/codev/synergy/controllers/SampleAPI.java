package codev.synergy.controllers;

import org.springframework.http.ResponseEntity;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("sample")
public class SampleAPI {

  @GetMapping(path = "/hello")
  public ResponseEntity<String> helloWorld() {
    return ResponseEntity.ok("{message: 'Hello, World!'}"); 
  }
  
}
