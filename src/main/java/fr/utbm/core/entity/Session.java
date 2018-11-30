/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.core.entity;

import java.util.Date;
import java.util.Objects;
import java.util.Set;


public class Session implements java.io.Serializable {

    private Course course;
    private int id_session;
    private Date start_date;
    private Date end_date;
    private int nbre_place;
    private Location location;
    private Set<Client> client;

    public Session() {
    }

    public Session(Course course, Date start_date, Date end_date, int nbre_place, Location location) {
        this.course = course;
        this.start_date = start_date;
        this.end_date = end_date;
        this.nbre_place = nbre_place;
        this.location = location;
    }
    
    public Set<Client> getClient() {
        return client;
    }

    public void setClient(Set<Client> client) {
        this.client = client;
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
        return "Session{" + "course=" + course + ", id_session=" + id_session + ", start_date=" + start_date + ", end_date=" + end_date + ", nbre_place=" + nbre_place + ", location=" + location + '}';
    }
    
    

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 37 * hash + Objects.hashCode(this.course);
        hash = 37 * hash + this.id_session;
        hash = 37 * hash + Objects.hashCode(this.start_date);
        hash = 37 * hash + Objects.hashCode(this.end_date);
        hash = 37 * hash + this.nbre_place;
        hash = 37 * hash + Objects.hashCode(this.location);
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
        final Session other = (Session) obj;
        if (this.id_session != other.id_session) {
            return false;
        }
        if (this.nbre_place != other.nbre_place) {
            return false;
        }
        if (!Objects.equals(this.course, other.course)) {
            return false;
        }
        if (!Objects.equals(this.start_date, other.start_date)) {
            return false;
        }
        if (!Objects.equals(this.end_date, other.end_date)) {
            return false;
        }
        if (!Objects.equals(this.location, other.location)) {
            return false;
        }
        return true;
    }

  
    
    

}
