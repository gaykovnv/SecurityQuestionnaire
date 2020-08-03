package com.example.uno.controller;

import com.example.uno.entity.Temp;
import com.example.uno.entity.Test;
import com.example.uno.service.TempService;
import com.example.uno.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class TestController {

    @Autowired
    private TestService testService;
    @Autowired
    private TempService tempService;

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

    @GetMapping("/admin/editQuestionnaire")
    public String getEditForm(Model model){
        return "editQuestionnaire";
    }

    @PostMapping("/admin/editQuestionnaire")
    public String saveEditForm(@RequestParam(value = "first") String first,
                               @RequestParam(value = "second") String second,
                               @RequestParam(value = "color1") String color1,
                               @RequestParam(value = "color2") String color2,
                               @RequestParam(value = "color3") String color3,
                               @RequestParam(value = "color4") String color4,
                               @RequestParam(value = "color5") String color5,
                               @RequestParam(value = "color6") String color6,
                               Model model
                                ){
        Temp temp = new Temp();
        temp.setFirst(first);
        temp.setSecond(second);
        temp.setColor1(color1);
        temp.setColor2(color2);
        temp.setColor3(color3);
        temp.setColor4(color4);
        temp.setColor5(color5);
        temp.setColor6(color6);
        tempService.save(temp);
        return "news";
    }

    @GetMapping("/newQuestionnaire")
    public String newFormQuestionnaire(Model model){
        Iterable<Temp> list = tempService.findAll();
        model.addAttribute("list",list);
        return "newQuestionnaire";
    }

    @GetMapping("/admin/deleteQuestionnaire")
    public String delete(@RequestParam("id") long id){
        Temp temp = tempService.findById(id);
        tempService.delete(temp);
        return "admin";
    }

    @GetMapping("/admin/answerByNew")
    public String newList(Model model){
        List<Temp> list = tempService.findAll();
        model.addAttribute("list",list);
        return "answerByNew";
    }
}
