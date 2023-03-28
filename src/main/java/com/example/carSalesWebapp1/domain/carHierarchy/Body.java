package com.example.carSalesWebapp1.domain.carHierarchy;

import java.util.ArrayList;
import java.util.List;

public enum Body {
    sedan, coupe, wagon, hatchback, minivan, convertible;

    public static List<String> getBody() {
        List<String> body = new ArrayList<>();
        for (Body s : Body.values()) {
            body.add(s.toString());
        }
        return body;
    }
}
