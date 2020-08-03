package com.example.uno.entity;

import javax.persistence.*;

@Entity
@Table(name="test")
public class Test {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String  firstQuest;
    private String  secondQuest;
    private String name;

    public Test() {
    }

    public Test(String name, String firstQuest, String secondQuest ) {
        this.firstQuest = firstQuest;
        this.secondQuest = secondQuest;
        this.name = name;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFirstQuest() {
        return firstQuest;
    }

    public void setFirstQuest(String firstQuest) {
        this.firstQuest = firstQuest;
    }

    public String getSecondQuest() {
        return secondQuest;
    }

    public void setSecondQuest(String secondQuest) {
        this.secondQuest = secondQuest;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
