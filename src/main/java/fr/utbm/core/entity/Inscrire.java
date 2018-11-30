/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.core.entity;

import java.util.Date;
import java.util.Objects;

/**
 *
 * @author albert-einst
 */
public class Inscrire implements java.io.Serializable{
    private Client client;
    private  Session session;
    private Date date_inscription;

    public Inscrire() {
    }

    public Inscrire(Client client, Course course, Session session, Date date_inscription) {
        this.client = client;
        this.session = session;
        this.date_inscription = date_inscription;
    }

    public Client getClient() {
        return client;
    }

    public Session getSession() {
        return session;
    }

    public Date getDate_inscription() {
        return date_inscription;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    public void setSession(Session session) {
        this.session = session;
    }

    public void setDate_inscription(Date date_inscription) {
        this.date_inscription = date_inscription;
    }

    @Override
    public String toString() {
        return "Inscrire{" + "client=" + client + ", session=" + session + ", date_inscription=" + date_inscription + '}';
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 43 * hash + Objects.hashCode(this.client);
        hash = 43 * hash + Objects.hashCode(this.session);
        hash = 43 * hash + Objects.hashCode(this.date_inscription);
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
        if (!Objects.equals(this.client, other.client)) {
            return false;
        }
        if (!Objects.equals(this.session, other.session)) {
            return false;
        }
        if (!Objects.equals(this.date_inscription, other.date_inscription)) {
            return false;
        }
        return true;
    }

    
    
}
