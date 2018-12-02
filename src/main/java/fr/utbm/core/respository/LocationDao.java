/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.core.respository;

import fr.utbm.core.entity.Location;
import fr.utbm.core.util.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author albert-einst
 */
public class LocationDao implements java.io.Serializable {
    public List<Location> listCourse(){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        List<Location> lstl;
        Query query = session.createQuery("from Course");
        lstl = query.list();
        return lstl;
    }
    
      public void saveLocation(Location l){
         Session session = HibernateUtil.getSessionFactory().openSession();
         session.beginTransaction();
         session.save(l);        
    }
}
