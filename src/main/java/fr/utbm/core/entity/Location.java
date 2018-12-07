/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.core.entity;

import java.util.Objects;

/**
 *
 * @author albert-einst
 */
public class Location implements java.io.Serializable {
    
    private int id;
    private String street;
    private String postal_code;
    private String city;
    private String country;
    

    
    public Location() {
    }
    
    public Location(int id, String street, String postal_code, String city, String country) {
        this.id = id;
        this.street = street;
        this.postal_code = postal_code;
        this.city = city;
        this.country = country;
    }

    public int getId() {
        return id;
    }

    public String getStreet() {
        return street;
    }

    public String getPostal_code() {
        return postal_code;
    }

    public String getCity() {
        return city;
    }

    public String getCountry() {
        return country;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public void setPostal_code(String postal_code) {
        this.postal_code = postal_code;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 89 * hash + this.id;
        hash = 89 * hash + Objects.hashCode(this.street);
        hash = 89 * hash + Objects.hashCode(this.postal_code);
        hash = 89 * hash + Objects.hashCode(this.city);
        hash = 89 * hash + Objects.hashCode(this.country);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Location other = (Location) obj;
        if (this.id != other.id) {
            return false;
        }
        if (!Objects.equals(this.street, other.street)) {
            return false;
        }
        if (!Objects.equals(this.postal_code, other.postal_code)) {
            return false;
        }
        if (!Objects.equals(this.city, other.city)) {
            return false;
        }
        if (!Objects.equals(this.country, other.country)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Location{" + "street=" + street + ", postal_code=" + postal_code + ", city=" + city + ", country=" + country + '}';
    }

    


    
}
