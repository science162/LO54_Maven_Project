/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.core.respository;

import fr.utbm.core.util.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author albert-einst
 */
public class SessionDao {
    
     public List<fr.utbm.core.entity.Session> listSession(){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        List<fr.utbm.core.entity.Session> lsts;
        Query query = session.createQuery("from Session");
        lsts = query.list();
        return lsts;
    }
    public void saveCourseSession(fr.utbm.core.entity.Session s){
         Session session = HibernateUtil.getSessionFactory().openSession();
         session.beginTransaction();
         session.save(s);
         
    }
    
    public List<fr.utbm.core.entity.Session> getSessionByCourse(int id_course){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        List<fr.utbm.core.entity.Session> lsts;
        Query query = session.createQuery("from Session as s inner join s.course where s.course.id_course = ?");
        query.setParameter(0, id_course);
        lsts = query.list();
        return lsts;
    }
}
