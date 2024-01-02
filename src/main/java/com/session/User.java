/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.session;

/**
 *
 * @author ByMazarat
 */
public class User {
    private String name;
    private String surname;
    private int age;
    
    public User(){
        
    }
    public void setName(String n){ this.name = n;}
    public void setSurname(String s){ this.surname = s;}
    public void setAge(int a){this.age = a;}
    
    public String getName(){ return this.name; }
    public String getSurname(){ return this.surname; }
    public int getAge(){ return this.age; }

}
