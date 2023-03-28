package com.example.carSalesWebapp1.controller;

import com.example.carSalesWebapp1.domain.Role;
import com.example.carSalesWebapp1.domain.User;
import com.example.carSalesWebapp1.domain.carHierarchy.Body;
import com.example.carSalesWebapp1.domain.carHierarchy.Brand;
import com.example.carSalesWebapp1.domain.carHierarchy.Car;
import com.example.carSalesWebapp1.repos.CarRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.util.*;

@Controller
@RequestMapping("/cars")
public class CarsController {

    @Autowired
    CarRepo carRepo;

    @Value("${upload.path}")
    private String uploadPath;

    @GetMapping
    public String main(@RequestParam(required = false, defaultValue = "") String filter,
                       @RequestParam(required = false) Map<String, String> form,
                       @RequestParam(required = false) Integer startYear,
                       @RequestParam(required = false) Integer endYear,
                       @RequestParam(required = false) String condition,
                       @RequestParam(required = false) Double minPrice,
                       @RequestParam(required = false) Double maxPrice,
                       Model model) {
        Iterable<Car> cars = carRepo.findAll();

        if (filter != null && !filter.isEmpty()) {
            List<String> brands = new ArrayList<>();
            List<String> body = new ArrayList<>();
            for (String key : form.keySet()) {
                if(key.startsWith("brand")){
                    brands.add(form.get(key));
                }
                if(key.startsWith("body")){
                    body.add(form.get(key));
                }
                if(form.get(key).equals("condition")){
                    break;
                }
            }

            if(brands.isEmpty() && body.isEmpty()){
                List<String> allBrands = Brand.getBrands();
                List<String> allBody = Body.getBody();
                cars = carRepo.filter(allBrands, startYear, endYear, allBody, condition, minPrice, maxPrice);
            } else if (brands.isEmpty() && !body.isEmpty()) {
                List<String> allBrands = Brand.getBrands();
                cars = carRepo.filter(allBrands, startYear, endYear, body, condition, minPrice, maxPrice);
            } else if (!brands.isEmpty() && body.isEmpty()) {
                List<String> allBody = Body.getBody();
                cars = carRepo.filter(brands, startYear, endYear, allBody, condition, minPrice, maxPrice);
            } else {
                cars = carRepo.filter(brands, startYear, endYear, body, condition, minPrice, maxPrice);
            }

            model.addAttribute("brands", brands);
            model.addAttribute("startYear", startYear.toString());
            model.addAttribute("endYear", endYear.toString());
            model.addAttribute("body", body);
            model.addAttribute("condition", condition);
            model.addAttribute("minPrice", minPrice.toString());
            model.addAttribute("maxPrice", maxPrice.toString());
        } else {
            cars = carRepo.findAll();
        }

        model.addAttribute("cars", cars);

        return "cars";
    }

    @GetMapping("/add")
    public String add(Model model){
        model.addAttribute("brands", Brand.values());
        return "carsAdd";
    }

    @PostMapping("/add")
    public String add(
            @AuthenticationPrincipal User user,
            @Valid Car car,
            BindingResult bindingResult,
            Model model,
            @RequestParam("file") MultipartFile file,
            @RequestParam("brand") Brand brand
    ) throws IOException {
        car.setAuthor(user);
        car.setStatus("on moderation");
        car.setBrands(Collections.singleton(brand));
        saveFile(car, file);


        if(bindingResult.hasErrors()){
            Map<String, String> errors = ControllerUtils.getErrors(bindingResult);
            model.mergeAttributes(errors);
            return "carsAdd";

        }
        carRepo.save(car);
//        return "greeting";
        return "redirect:/cars";
    };

    private void saveFile(Car car, MultipartFile file) throws IOException {
        if (file != null && !file.getOriginalFilename().isEmpty()) {
            File uploadDir = new File(uploadPath);

            if(!uploadDir.exists()){
                uploadDir.mkdir();
            }

            String uuidFile = UUID.randomUUID().toString();
            String resultFilename = uuidFile + "." + file.getOriginalFilename();

            file.transferTo(new File(uploadPath + "/" + resultFilename));

            car.setFilename(resultFilename);
        }
    }
}
