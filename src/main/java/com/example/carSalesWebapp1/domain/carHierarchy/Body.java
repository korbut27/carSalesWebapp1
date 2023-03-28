package com.example.carSalesWebapp1.domain.carHierarchy;

import java.util.ArrayList;
import java.util.List;

public enum Body {
    SEDAN("Седан"), COUPE("Купе"), WAGON("Универсал"), HATCHBACK("Хэтчбэк"), MINIVAN("Минивэн"), CONVERTIBLE("Кабриолет");

    private String translation;

    private Body(String translation) {
        this.translation = translation;
    }

    public static List<String> getBody() {
        List<String> body = new ArrayList<>();
        for (Body s : Body.values()) {
            body.add(s.translation);
        }
        return body;
    }
}
