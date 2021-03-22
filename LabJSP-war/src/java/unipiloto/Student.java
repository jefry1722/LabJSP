/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package unipiloto;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.Period;
import java.time.format.DateTimeFormatter;

/**
 *
 * @author JEFRY
 */
public class Student 
{
    private String name;
    private String birthdate;
    private final int HORA_ACTUAL;
    
    public Student(){
        name=null;
        birthdate=null;
        HORA_ACTUAL= Integer.parseInt(DateTimeFormatter.ofPattern("k").format(LocalDateTime.now()));
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(String birthdate) {
        this.birthdate = birthdate;
    }

    public int getHORA_ACTUAL() {
        return HORA_ACTUAL;
    }

    public int getEdad(){
        LocalDate birth= LocalDate.parse(birthdate, DateTimeFormatter.ofPattern("d/M/y"));
        return Period.between(birth, LocalDate.now()).getYears();
    }
}
