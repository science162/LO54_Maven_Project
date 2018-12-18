/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.core.entity;

import java.util.Date;


public class Sesion implements java.io.Serializable {

    private Course course;
    private int id_session;
    private Date start_date;
    private Date end_date;
    private int nbre_place;
    private int nbre_inscrit;
    private Location location;

    public Sesion() {
    }

    public int getNbre_inscrit() {
        return nbre_inscrit;
    }

    public void setNbre_inscrit(int nbre_inscrit) {
        this.nbre_inscrit = nbre_inscrit;
    }

    public Sesion(Course course, int id_session, Date start_date, Date end_date, int nbre_place, int nbre_inscrit, Location location) {
        this.course = course;
        this.id_session = id_session;
        this.start_date = start_date;
        this.end_date = end_date;
        this.nbre_place = nbre_place;
        this.nbre_inscrit = nbre_inscrit;
        this.location = location;
    }    
    

    public Course getCourse() {
        return course;
    }

    public int getId_session() {
        return id_session;
    }

    public Date getStart_date() {
        return start_date;
    }

    public Date getEnd_date() {
        return end_date;
    }

    public int getNbre_place() {
        return nbre_place;
    }

    public Location getLocation() {
        return location;
    }
        
    public void setCourse(Course course) {
        this.course = course;
    }

    public void setId_session(int id_session) {
        this.id_session = id_session;
    }

    public void setStart_date(Date start_date) {
        this.start_date = start_date;
    }

    public void setEnd_date(Date end_date) {
        this.end_date = end_date;
    }

    public void setNbre_place(int nbre_place) {
        this.nbre_place = nbre_place;
    }

    public void setLocation(Location location) {
        this.location = location;
    }

    @Override
    public String toString() {
        return "Sesion{" + "course=" + course + ", id_session=" + id_session + ", start_date=" + start_date + ", end_date=" + end_date + ", nbre_place=" + nbre_place + ", nbre_inscrit=" + nbre_inscrit + ", location=" + location + '}';
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 37 * hash + (this.course != null ? this.course.hashCode() : 0);
        hash = 37 * hash + this.id_session;
        hash = 37 * hash + (this.start_date != null ? this.start_date.hashCode() : 0);
        hash = 37 * hash + (this.end_date != null ? this.end_date.hashCode() : 0);
        hash = 37 * hash + this.nbre_place;
        hash = 37 * hash + this.nbre_inscrit;
        hash = 37 * hash + (this.location != null ? this.location.hashCode() : 0);
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
        final Sesion other = (Sesion) obj;
        if (this.id_session != other.id_session) {
            return false;
        }
        if (this.nbre_place != other.nbre_place) {
            return false;
        }
        if (this.nbre_inscrit != other.nbre_inscrit) {
            return false;
        }
        if (this.course != other.course && (this.course == null || !this.course.equals(other.course))) {
            return false;
        }
        if (this.start_date != other.start_date && (this.start_date == null || !this.start_date.equals(other.start_date))) {
            return false;
        }
        if (this.end_date != other.end_date && (this.end_date == null || !this.end_date.equals(other.end_date))) {
            return false;
        }
        if (this.location != other.location && (this.location == null || !this.location.equals(other.location))) {
            return false;
        }
        return true;
    }
        



  
    
    

}
