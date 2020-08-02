package com.example.uno.entity;

import javax.persistence.*;

@Entity
@Table(name="Questionnaire")
public class Questionnaire {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Boolean redColor = false;
    private Boolean greenColor = false;
    private Boolean blueColor = false;
    private String name;

    public Questionnaire() {
    }

    public Questionnaire(String name, Boolean redColor, Boolean greenColor, Boolean blueColor) {
        this.redColor = redColor;
        this.greenColor = greenColor;
        this.blueColor = blueColor;
        this.name = name;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Boolean getRedColor() {
        return redColor;
    }

    public void setRedColor(Boolean redColor) {
        this.redColor = redColor;
    }

    public Boolean getGreenColor() {
        return greenColor;
    }

    public void setGreenColor(Boolean greenColor) {
        this.greenColor = greenColor;
    }

    public Boolean getBlueColor() {
        return blueColor;
    }

    public void setBlueColor(Boolean blueColor) {
        this.blueColor = blueColor;
    }
}
