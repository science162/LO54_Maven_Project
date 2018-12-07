/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.core.respository;

import fr.utbm.core.entity.Client;
import fr.utbm.core.entity.Inscrire;
import fr.utbm.core.entity.Sesion;
import fr.utbm.core.util.HibernateUtil;
import java.util.Date;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author albert-einst
 */
public class InscrireDao implements java.io.Serializable{
    
    public void register(Client c, Sesion s, Date d){
        
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Inscrire I = new Inscrire(c,s,d);
        session.save(I);
        Query query = session.createQuery("update Sesion session set nbre_place = nbre_place - 1 where session.id_session = "+s.getId_session());
        query.executeUpdate();
    }
    
    public void unregister(Client c, Sesion s, Date d){
        
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Inscrire I = new Inscrire(c,s,d);
        session.save(I);
        Query query = session.createQuery("update Sesion session set nbre_place = nbre_place - 1 where session.id_session = "+s.getId_session());
        query.executeUpdate();
    }
}
