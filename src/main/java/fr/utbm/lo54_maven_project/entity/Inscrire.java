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
 * @author albert-einst
 */
public class Inscrire implements java.io.Serializable{
    private int id_clt;
    private String code;
    private int id_course;
    private Date date_inscription;

    public Inscrire() {
    }

    public Inscrire(int id_clt, String code, int id_course, Date date_inscription) {
        this.id_clt = id_clt;
        this.code = code;
        this.id_course = id_course;
        this.date_inscription = date_inscription;
    }

    public int getId_clt() {
        return id_clt;
    }

    public void setId_clt(int id_clt) {
        this.id_clt = id_clt;
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

    public Date getDate_inscription() {
        return date_inscription;
    }

    public void setDate_inscription(Date date_inscription) {
        this.date_inscription = date_inscription;
    }

    @Override
    public String toString() {
        return "Inscrire{" + "id_clt=" + id_clt + ", code=" + code + ", id_course=" + id_course + ", date_inscription=" + date_inscription + '}';
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 47 * hash + this.id_clt;
        hash = 47 * hash + Objects.hashCode(this.code);
        hash = 47 * hash + this.id_course;
        hash = 47 * hash + Objects.hashCode(this.date_inscription);
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
        final Inscrire other = (Inscrire) obj;
        if (this.id_clt != other.id_clt) {
            return false;
        }
        if (this.id_course != other.id_course) {
            return false;
        }
        if (!Objects.equals(this.code, other.code)) {
            return false;
        }
        if (!Objects.equals(this.date_inscription, other.date_inscription)) {
            return false;
        }
        return true;
    }
    
    
}
