package codev.synergy.controller;

import org.springframework.web.bind.annotation.RequestMapping;

public class SampleAPI {

  @RequestMapping("/")
  public String helloWorld() {
    return "Hello, World!"; 
  }
  
}
