package com.example.carSalesWebapp1.domain.carHierarchy;

import com.example.carSalesWebapp1.domain.User;
import org.hibernate.validator.constraints.Length;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;

import java.util.Set;

import static javax.persistence.GenerationType.AUTO;

@Entity
public class Car {
    @Id
    @GeneratedValue(strategy = AUTO)
    private Long id;

    private String brand;

    @NotBlank(message = "Please fill the field")
    @Length(max = 255, message = "Name to long (more than 255)")
    private String name;

    @Max(value = 1000000, message = "Max price - 1000000$")
    @Min(value = 1000, message = "Min price - 1000$")
    private double price;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private User author;

    @ElementCollection(targetClass = Brand.class, fetch = FetchType.EAGER)
    @CollectionTable(name = "car_brand", joinColumns = @JoinColumn(name = "car_id"))
    @Enumerated(EnumType.STRING)
    private Set<Brand> brands;

    private String filename;

    @NotBlank(message = "Please fill the field")
    @Length(max = 2048, message = "Description to long (more than 2kb)")
    private String description;

    private String status;

    private int year;

    @Max(value = 1000000, message = "Max mileage - 1000000km")
    @Min(value = 0, message = "Min mileage - 0km")
    private double mileage;

    private String body;

    @NotBlank(message = "Please fill the field")
    @Length(max = 255, message = "Color to long (more than 255)")
    private String color;

    @NotBlank(message = "Please fill the field")
    @Length(max = 255, message = "Engine to long (more than 255)")
    private String engine;

    @NotBlank(message = "Please fill the field")
    @Length(max = 255, message = "Equipment to long (more than 255)")
    private String equipment;

    private String gearbox;

    private String drive;

    private String condition;

    @NotBlank(message = "Please fill the field")
    @Length(max = 255, message = "VIN to long (more than 255)")
    private String vin;

    public Car(User author, Set<Brand> brands, String status, int year,
               double mileage, String body, String color, String engine,
               String equipment, String gearbox, String drive, String condition, String vin
    ) {
        this.author = author;
        this.brands = brands;
        this.status = status;
        this.year = year;
        this.mileage = mileage;
        this.body = body;
        this.color = color;
        this.engine = engine;
        this.equipment = equipment;
        this.gearbox = gearbox;
        this.drive = drive;
        this.condition = condition;
        this.vin = vin;
    }

    public Car() {

    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public User getAuthor() {
        return author;
    }

    public void setAuthor(User author) {
        this.author = author;
    }

    public Set<Brand> getBrands() {
        return brands;
    }

    public void setBrands(Set<Brand> brands) {
        this.brands = brands;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public double getMileage() {
        return mileage;
    }

    public void setMileage(double mileage) {
        this.mileage = mileage;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getEngine() {
        return engine;
    }

    public void setEngine(String engine) {
        this.engine = engine;
    }

    public String getEquipment() {
        return equipment;
    }

    public void setEquipment(String equipment) {
        this.equipment = equipment;
    }

    public String getGearbox() {
        return gearbox;
    }

    public void setGearbox(String gearbox) {
        this.gearbox = gearbox;
    }

    public String getDrive() {
        return drive;
    }

    public void setDrive(String drive) {
        this.drive = drive;
    }

    public String getCondition() {
        return condition;
    }

    public void setCondition(String condition) {
        this.condition = condition;
    }

    public String getVin() {
        return vin;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }
}

