/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service;

import entity.Car;
import java.util.ArrayList;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import repository.CarRepository;

/**
 *
 * @author addis
 */
@Service
@Transactional
public class CarService {
    @Autowired
    private CarRepository carRepository;

    public List<Car> listAll() {
        return carRepository.findAll();
    }

    public List<Car> listRented() {
        List<Car> rentedList = new ArrayList<>();
        carRepository.findAll().forEach(car -> {
            if (car.getIsRented()) {
                rentedList.add(car);
            }
        });
        return rentedList;
    }

//    public void rentCar(Integer pid) {
//        Car car = carRepository.findById(pid).orElseThrow(() -> new IllegalStateException("Car with pid=" + pid + "does not exist."));
//        if (car.getIsRented()) {
//            throw new IllegalStateException("Car with pid=" + pid + " is already rented.");
//        } else {
//            car.setIsRented(true);
//        }
//    }
//
//    public void returnCar(Integer pid) {
//        Car car = carRepository.findById(pid).orElseThrow(() -> new IllegalStateException("Car with pid=" + pid + "does not exist."));
//        if (!car.getIsRented()) {
//            throw new IllegalStateException("Car with pid=" + pid + " is not rented. Cannot return a car that is not rented...");
//        } else {
//            car.setIsRented(false);
//        }
//    }
//
//    public Car getCarById(Integer pid) {
//        try {
//            Car car = carRepository.findById(pid).get();
//            return car;
//        } catch (Exception e) {
//            throw new IllegalStateException("PID does not exist");
//        }
//    }


}

