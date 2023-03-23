package com.example.carSalesWebapp1.repos;

import com.example.carSalesWebapp1.domain.carHierarchy.Car;
import org.springframework.data.repository.CrudRepository;

public interface CarRepo extends CrudRepository<Car, Long> {

}
