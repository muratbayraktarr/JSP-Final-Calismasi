/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.SqlData;

import com.Model.User;
import com.db.MySQLVeritabaniBaglantisi;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author ByMazarat
 */
public class getUsers {

    public void addUser(String name,String username, String password){
        MySQLVeritabaniBaglantisi db = new MySQLVeritabaniBaglantisi();
        Connection conn;
        try {
            conn = db.baglantiyiAl();
            String query = "INSERT INTO kullanici (name,username,password) VALUES (?,?,?)";
            PreparedStatement statement = conn.prepareStatement(query);
            statement.setString(1, name);
            statement.setString(2, username);
            statement.setString(3, password);
            statement.executeUpdate();
            
        } catch (Exception e) {
        } finally {
            conn = db.baglantiyiKapat();
        }
    }
    
    public ArrayList<User> getUser(){
        MySQLVeritabaniBaglantisi db = new MySQLVeritabaniBaglantisi();
        Connection conn;
        ResultSet resultSet = null;
        ArrayList<User> list = new ArrayList<>();
        try {
            conn = db.baglantiyiAl();
            String query = "SELECT * FROM kullanici";
            PreparedStatement statement = conn.prepareStatement(query);
            resultSet = statement.executeQuery();          
            while(resultSet.next())
            {
                try {
                    int id = resultSet.getInt("id");
                    String username = resultSet.getString("username");
                    String password = resultSet.getString("password");
                    String name = resultSet.getString("name");
                    User u1 = new User(id,name,username,password);
                    list.add(u1);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }          
        } catch (Exception e) {
            
        }finally{
            conn = db.baglantiyiKapat();
        }
       
        return list;
    }
    
}
