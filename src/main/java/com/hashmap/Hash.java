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
public class Hash {
    HashMap<String, String> hash = new HashMap<>();

    public Hash() {
        hash.put("Türkiye", "Ankara");
        hash.put("Fransa", "Paris");
        hash.put("İngiltere", "Londra");
    }
    public String getHash(String Key){
        if(hash.get(Key) != null){
            return hash.get(Key);
        }
        else 
            return Key;
    }
    public void clearHash(){
        hash.clear();
    }
    
}
