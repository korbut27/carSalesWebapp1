package com.example.carSalesWebapp1.repos;

import com.example.carSalesWebapp1.domain.Message;
import com.example.carSalesWebapp1.domain.carHierarchy.Brand;
import com.example.carSalesWebapp1.domain.carHierarchy.Car;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Set;

public interface CarRepo extends CrudRepository<Car, Long> {
    @Query("SELECT car FROM Car car WHERE car.brand IN :brands " +
            "AND car.year BETWEEN :startYear AND :endYear " +
            "AND car.body IN :body " +
            "AND car.condition = :condition " +
            "AND car.price BETWEEN :minPrice AND :maxPrice")
    List<Car> filter(
            @Param("brands") List<String> brands,
            @Param("startYear") int startYear,
            @Param("endYear") int endYear,
            @Param("body") List<String> body,
            @Param("condition") String condition,
            @Param("minPrice") Double minPrice,
            @Param("maxPrice") Double maxPrice);
}
