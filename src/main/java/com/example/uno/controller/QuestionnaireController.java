package com.example.uno.controller;

import com.example.uno.entity.Test;
import com.example.uno.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class QuestionnaireController {

    @Autowired
    private TestService testService;

    @GetMapping("/questionnaire")
    public String showCheckbox(Model model){
          return "questionnaire";
    }

    @PostMapping("/questionnaire")
    public String saveCheckbox(@RequestParam(value = "name")String name,
                               @RequestParam(value = "myColor", required = false) String myColor,
                               @RequestParam(value = "color",required = false) String color,
                               Model model){

        Test test = new Test(name,myColor,color);
        testService.save(test);
        return "news";
    }

    @GetMapping("/admin/answer")
    public String answer(Model model){
        List<Test> answerTest = testService.findAll();
        model.addAttribute("answerTest",answerTest);
        return "answer";
    }
}
