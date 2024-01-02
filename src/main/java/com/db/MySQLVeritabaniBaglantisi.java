/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.db;

/**
 *
 * @author ByMazarat
 */
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class MySQLVeritabaniBaglantisi {

    private static final String URL = "jdbc:mysql://localhost:3306/final";
    private static final String KULLANICI_ADI = "root";
    private static final String SIFRE = "";
    private static Connection baglanti = null;

    public Connection baglantiyiAl() {
        if (baglanti != null) {
            System.out.println("Açık bağlantı geri döndü !");
            return baglanti;
        }
        else{
            try {
                Class.forName("com.mysql.jdbc.Driver");
                baglanti = DriverManager.getConnection(URL, KULLANICI_ADI, SIFRE);
                System.out.println("Bağlantı Açıldı !");
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
            }
            return baglanti;
        }
        
    }

    public Connection baglantiyiKapat() {
        if (baglanti != null) {
            try {    
                baglanti.close();
                baglanti = null;
                System.out.println("Bağlantı Kapatıldı !");
            } catch (SQLException e) {
                e.printStackTrace();
            }
            
        }
        else{
            System.out.println("Bağlantı NULL !");
        }
        return baglanti;
    }


    
}
