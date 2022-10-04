/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.math.BigDecimal;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

/**
 *
 * @author addis
 */
@Entity
public class Car {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer pid;
    private Integer year;
    private Integer mileage;
    private Boolean isRented;
    private String model;
    private String license;
    private BigDecimal price;

    

    public Car() {
    }

    public Car(Integer pid, Integer year, Integer mileage, Boolean isRented, String model, String license, BigDecimal price) {
        this.pid = pid;
        this.year = year;
        this.mileage = mileage;
        this.isRented = isRented;
        this.model = model;
        this.license = license;
        this.price = price;
    }

    
    public Car(Integer year, Integer mileage, Boolean isRented, String model, String license, BigDecimal price) {
        this.year = year;
        this.mileage = mileage;
        this.isRented = isRented;
        this.model = model;
        this.license = license;
        this.price = price;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer productID) {
        this.pid = productID;
    }

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    public Integer getMileage() {
        return mileage;
    }

    public void setMileage(Integer mileage) {
        this.mileage = mileage;
    }

    public Boolean getIsRented() {
        return isRented;
    }

    public void setIsRented(Boolean rented) {
        isRented = rented;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model.toUpperCase();
    }

    public String getLicense() {
        return license;
    }

    public void setLicense(String license) {
        this.license = license.toUpperCase();
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Car{" +
                "productID=" + pid +
                ", year=" + year +
                ", mileage=" + mileage +
                ", isRented=" + isRented +
                ", model='" + model + '\'' +
                ", license='" + license + '\'' +
                ", price=" + price +
                '}';
    }
}
