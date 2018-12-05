/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.core.respository;

import fr.utbm.core.entity.Course;
import fr.utbm.core.util.HibernateUtil;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author albert-einst
 */
public class CourseDao implements java.io.Serializable {
    
    public Course getCourseById(int id){
         Session session = HibernateUtil.getSessionFactory().getCurrentSession();
         session.beginTransaction();
         Course c = new Course();
         c = (Course)session.get(Course.class, id);
         return c;
    }
       
    public List<Course> listCourse(){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        List<Course> lstc = new ArrayList<Course>();
        Query query = session.createQuery("from Course");
        lstc = query.list();
        return lstc;
    }
    
    public List<Course> listCourse(String s){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        List<Course> lstc = new ArrayList<Course>();
        Query query = session.createQuery("from Course c where c.title like %"+s+"%");
        lstc = query.list();
        return lstc;
    }
    
    public void saveCourse(Course C){
         Session session = HibernateUtil.getSessionFactory().getCurrentSession();
         session.beginTransaction();
         session.save(C);        
    }
}
