package com.example.uno.controller;

import com.example.uno.entity.Questionnaire;
import com.example.uno.service.QuestionnaireService;
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
    private QuestionnaireService service;

    @GetMapping("/questionnaire")
    public String showCheckbox(Model model){
        Boolean redColor = false;
        Boolean greenColor = false;
        Boolean blueColor = false;
        model.addAttribute("redColor", redColor);
        model.addAttribute("greenColor", greenColor);
        model.addAttribute("blueColor", blueColor);
        return "questionnaire";
    }
    @PostMapping("/questionnaire")
    public String saveCheckbox(@RequestParam(value = "name")String name,
                               @RequestParam(value = "redColor", required = false) Boolean redColor,
                               @RequestParam(value = "greenColor", required = false) Boolean greenColor,
                               @RequestParam(value = "blueColor", required = false) Boolean blueColor,
                               Model model){
        Questionnaire answer = new Questionnaire(name,redColor,greenColor,blueColor);
        service.save(answer);
        return "news";
    }
}
