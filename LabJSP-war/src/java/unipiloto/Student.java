/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package unipiloto;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/**
 *
 * @author JEFRY
 */
public class Student 
{
    private String name;
    private String birthdate;
    private int horaActual;
    
    public Student(){
        name=null;
        birthdate=null;
        horaActual= Integer.parseInt(DateTimeFormatter.ofPattern("k").format(LocalDateTime.now()));
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
    
    public int getHoraActual()
    {
        return horaActual;
    }
}
