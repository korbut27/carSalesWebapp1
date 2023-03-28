package com.example.carSalesWebapp1.domain.carHierarchy;

import java.util.ArrayList;
import java.util.List;

public enum Brand {
    BMW, MERCEDES;

    public static List<String> getBrands() {
        List<String> brands = new ArrayList<>();
        for (Brand s : Brand.values()) {
            brands.add(s.toString());
        }
        return brands;
    }
}
