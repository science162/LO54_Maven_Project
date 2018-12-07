/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.core.respository;

import fr.utbm.core.entity.Location;
import fr.utbm.core.entity.Sesion;
import fr.utbm.core.util.HibernateUtil;
import java.util.Date;
import java.util.List;
import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author albert-einst
 */
public class SessionDao implements java.io.Serializable {
    
     public List<Sesion> listSession(){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        List<fr.utbm.core.entity.Sesion> lsts;
        Query query = session.createQuery("from Sesion");
        lsts = (List<Sesion>)query.list();
        for (Sesion s : lsts) {
            Hibernate.initialize(s.getLocation());
            Hibernate.initialize(s.getCourse());
        }
        return lsts;
    }
    public void saveCourseSession(Sesion s){
         Session session = HibernateUtil.getSessionFactory().getCurrentSession();
         session.beginTransaction();
         session.save(s);
         
    }
    
    public List<Sesion> getSessionByCourse(int id_course){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        List<fr.utbm.core.entity.Sesion> lsts;
        Query query = session.createQuery("from Sesion as s inner join s.course where s.course.id_course = ?");
        query.setParameter(0, id_course);
        lsts = (List<Sesion>)query.list();
          for (Sesion s : lsts) {
            Hibernate.initialize(s.getLocation());
            Hibernate.initialize(s.getCourse());
        }
        return lsts;
    }
    
    public List<Sesion> getSessionByCourse(String title){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        List<fr.utbm.core.entity.Sesion> lsts;
        Query query = session.createQuery("from Sesion as s where lower(s.course.title) like lower(?)");
        query.setParameter(0, title);
        lsts = (List<Sesion>)query.list();
          for (Sesion s : lsts) {
            Hibernate.initialize(s.getLocation());
            Hibernate.initialize(s.getCourse());
        }
        return lsts;
    }
    
      public List<Sesion> getSessionByDate(Date date){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        List<fr.utbm.core.entity.Sesion> lsts;
        Query query = session.createQuery("from Sesion as s  where s.start_date <= ?");
        query.setParameter(0, date);
        lsts = (List<Sesion>)query.list();
        for (Sesion s : lsts) {
            Hibernate.initialize(s.getLocation());
            Hibernate.initialize(s.getCourse());
        }
        return lsts;
    }
    public List<Sesion> getSessionByCity(String city){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        List<fr.utbm.core.entity.Sesion> lsts;
        Query query = session.createQuery("from Sesion as s where lower(s.location.city) like  lower(?)");
        query.setParameter(0, city);
        lsts = (List<Sesion>)query.list();
        for (Sesion s : lsts) {
            Hibernate.initialize(s.getLocation());
            Hibernate.initialize(s.getCourse());
        }
        return lsts;
    }
}
