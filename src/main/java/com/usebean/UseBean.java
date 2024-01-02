package com.usebean;
import java.util.HashMap;

public class UseBean {
    private String ad;
    private String soyad;
    private HashMap<String, String> userMap;

    public UseBean() {
        userMap = new HashMap<>();

    }

    public void setAd(String isim) {
        userMap.put("ad", isim);
    }

    public void setSoyad(String soyisim) {
        userMap.put("soyad", soyisim);
    }

    public String getAd() {
        return userMap.get("ad");
    }

    public String getSoyad() {
        return userMap.get("soyad");
    }
}
