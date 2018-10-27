/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.lo54_maven_project.entity;

import java.util.Date;
import java.util.Objects;

/**
 *
 * @author smeimou
 */
public class Course_Session implements java.io.Serializable {

    private String code;
    private int id_course;
    private Date start_date;
    private Date end_date;
    private int nbre_place;
    private Location id;

    public Course_Session() {
    }

    public Course_Session(String code, int id_course, Date start_date, Date end_date, int nbre_place, Location id) {
        this.code = code;
        this.id_course = id_course;
        this.start_date = start_date;
        this.end_date = end_date;
        this.nbre_place = nbre_place;
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public int getId_course() {
        return id_course;
    }

    public void setId_course(int id_course) {
        this.id_course = id_course;
    }

    public Date getStart_date() {
        return start_date;
    }

    public void setStart_date(Date start_date) {
        this.start_date = start_date;
    }

    public Date getEnd_date() {
        return end_date;
    }

    public void setEnd_date(Date end_date) {
        this.end_date = end_date;
    }

    public int getNbre_place() {
        return nbre_place;
    }

    public void setNbre_place(int nbre_place) {
        this.nbre_place = nbre_place;
    }

    public Location getId() {
        return id;
    }

    public void setId(Location id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "Course_Session{" + "code=" + code + ", id_course=" + id_course + ", start_date=" + start_date + ", end_date=" + end_date + ", nbre_place=" + nbre_place + ", id=" + id + '}';
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 61 * hash + Objects.hashCode(this.code);
        hash = 61 * hash + this.id_course;
        hash = 61 * hash + Objects.hashCode(this.start_date);
        hash = 61 * hash + Objects.hashCode(this.end_date);
        hash = 61 * hash + this.nbre_place;
        hash = 61 * hash + Objects.hashCode(this.id);
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
        final Course_Session other = (Course_Session) obj;
        if (this.id_course != other.id_course) {
            return false;
        }
        if (this.nbre_place != other.nbre_place) {
            return false;
        }
        if (!Objects.equals(this.code, other.code)) {
            return false;
        }
        if (!Objects.equals(this.start_date, other.start_date)) {
            return false;
        }
        if (!Objects.equals(this.end_date, other.end_date)) {
            return false;
        }
        if (!Objects.equals(this.id, other.id)) {
            return false;
        }
        return true;
    }
    
    

}
