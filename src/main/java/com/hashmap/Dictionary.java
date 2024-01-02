/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hashmap;
import java.util.HashMap;

/**
 *
 * @author ByMazarat
 */
public class Dictionary {
    HashMap<String,String> h = new HashMap<>();

    public Dictionary() {
        h.put("kalem","pencil");
        h.put("defter", "notebook");
        h.put("araba", "car");
    }
    public String getHash(String key){
        return h.get(key);
    }
    
    
}
