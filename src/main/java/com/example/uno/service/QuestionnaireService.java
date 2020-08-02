package com.example.uno.service;

import com.example.uno.entity.Questionnaire;
import com.example.uno.repository.QuestionnaireRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QuestionnaireService {

    @Autowired
    private QuestionnaireRepository repo;

    public List<Questionnaire> findAll(){
        return repo.findAll();
    }

    public void save(Questionnaire question){
        repo.save(question);
    }
}
