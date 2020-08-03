package com.example.uno.service;

import com.example.uno.entity.Temp;
import com.example.uno.repository.TempRepository;
import com.example.uno.repository.TestRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TempService {

    @Autowired
    private TempRepository repo;

    public List<Temp> findAll(){
        return (List<Temp>) repo.findAll();
    }

    public void save(Temp temp){
        repo.save(temp);
    }

    public void delete(Temp temp){
        repo.delete(temp);
    }

    public Temp findById(long id){
        return repo.getOne(id);
    }
}
