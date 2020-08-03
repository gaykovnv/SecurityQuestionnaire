package com.example.uno.service;

import com.example.uno.entity.Test;
import com.example.uno.repository.TestRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TestService {

    @Autowired
    private TestRepository repo;

    public List<Test> findAll(){
        return repo.findAll();
    }

    public void save(Test test){
        repo.save(test);
    }
}
