/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.Model;

/**
 *
 * @author ByMazarat
 */
public class User {
    private int id;
    private String name;
    private String username;
    private String password;
    
    public User(int id,String name,String username,String password){
        this.id = id;
        this.name = name;
        this.username = username;
        this.password = password;
    }
    
    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getPassword() {
        return password;
    }

    public String getUsername() {
        return username;
    }
    
}
