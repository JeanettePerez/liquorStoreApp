package com.sample;

import com.sample.model.LiquorType;

import java.util.ArrayList;
import java.util.List;

public class LiquorService {

    public List<String> getAvailableBrands(LiquorType type) {
        List<String> brands = new ArrayList<String>();
        if (type.equals(LiquorType.WINE)) {
            brands.add("Orin Swift");
            brands.add("Caymus Vineyards");
        } else if (type.equals(LiquorType.WHISKEY)) {
            brands.add("Rebecca Creek");
            brands.add("Bookers");
        } else if (type.equals(LiquorType.BEER)) {
            brands.add("Freetail");
            brands.add("Ballast Point");
        } else {
            brands.add("No Brand Available");
        }
        return brands;
    }


//    public static void main(String[] args) {
//        LiquorService test = new LiquorService();
//        var tester = test.getAvailableBrands(LiquorType.WHISKEY);
//        System.out.println(tester);
//    }
}