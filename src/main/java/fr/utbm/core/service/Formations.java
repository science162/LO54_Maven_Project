/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.core.service;

import fr.utbm.core.entity.Course;
import fr.utbm.core.entity.Sesion;
import fr.utbm.core.respository.CourseDao;
import fr.utbm.core.respository.SessionDao;
import fr.utbm.core.util.HibernateUtil;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author albert-einst
 */
public class Formations implements java.io.Serializable{

    
public List<Course> listFormation(){
    Session session = HibernateUtil.getSessionFactory().getCurrentSession();
    List<Course> cours = new ArrayList<Course>();
    CourseDao courdd = new CourseDao();
    session.beginTransaction();
    cours = courdd.listCourse();
    session.getTransaction().commit();
    //session.close();
    return cours;
 }
 
public List<Sesion> listSession(){
    Session session = HibernateUtil.getSessionFactory().getCurrentSession();
    List<Sesion> cours = new ArrayList<Sesion>();
    SessionDao courdd = new SessionDao();
    session.beginTransaction();
    cours = courdd.listSession();
    session.getTransaction().commit();
    //session.close();
    return cours;
 }
 
public List<Sesion> listSessionByCourse(String title){
    Session session = HibernateUtil.getSessionFactory().getCurrentSession();
    List<Sesion> cours = new ArrayList<Sesion>();
    SessionDao courdd = new SessionDao();
    session.beginTransaction();
    cours = courdd.getSessionByCourse("%"+title+"%");
    session.getTransaction().commit();
    //session.close();
    return cours;
 }

public List<Sesion> listSessionByCity(String city){
    Session session = HibernateUtil.getSessionFactory().getCurrentSession();
    List<Sesion> cours = new ArrayList<Sesion>();
    SessionDao courdd = new SessionDao();
    session.beginTransaction();
    cours = courdd.getSessionByCity("%"+city+"%");
    session.getTransaction().commit();
    //session.close();
    return cours;
 }
   
   
    
}
