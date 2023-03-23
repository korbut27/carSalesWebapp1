package com.example.carSalesWebapp1.controller;

import com.example.carSalesWebapp1.domain.Message;
import com.example.carSalesWebapp1.domain.User;
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
import java.util.Collections;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping("/cars")
public class CarsController {

    @Autowired
    CarRepo carRepo;

    @Value("${upload.path}")
    private String uploadPath;

    @GetMapping
    public String main(){
        return "carsList";
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
        return "carsList";
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
