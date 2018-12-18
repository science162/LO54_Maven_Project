/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.core.service;

import fr.utbm.core.entity.Client;
import fr.utbm.core.entity.Course;
import fr.utbm.core.entity.Inscrire;
import fr.utbm.core.entity.Sesion;
import fr.utbm.core.respository.ClientDao;
import fr.utbm.core.respository.CourseDao;
import fr.utbm.core.respository.InscrireDao;
import fr.utbm.core.respository.SessionDao;
import fr.utbm.core.util.HibernateUtil;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author albert-einst
 */
public class Formations implements java.io.Serializable{

    
 // Course methods
    
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

public List<Course> listCoursKeyWord(String key){
    Session session = HibernateUtil.getSessionFactory().getCurrentSession();
    List<Course> cours = new ArrayList<Course>();
    session.beginTransaction();
    cours = new CourseDao().listCourse("%"+key+"%");
    session.getTransaction().commit();
    session.close();
    return cours;
 }  

  // Sesions methods

public List<Sesion> listSession(){
    Session session = HibernateUtil.getSessionFactory().getCurrentSession();
    List<Sesion> cours = new ArrayList<Sesion>();
    SessionDao courdd = new SessionDao();
    session.beginTransaction();
    cours = courdd.listSession();
    session.getTransaction().commit();
    session.close();
    return cours;
 }
 



public List<Sesion> listSessionFilter(String date, String title ,String city){
    Session session = HibernateUtil.getSessionFactory().getCurrentSession();
    List<Sesion> cours = new ArrayList<Sesion>();
    SessionDao courdd = new SessionDao();
    session.beginTransaction();
    cours = courdd.getSessionFilter(date,"%"+title+"%","%"+city+"%");
    session.getTransaction().commit();
    //session.close();
    return cours;
 }

 public Sesion getSesion(int id){
    Session session = HibernateUtil.getSessionFactory().getCurrentSession();
    Sesion sesion = new Sesion();
    sesion = new SessionDao().loadSession(id);
    session.getTransaction().commit();
    //session.close();
    return sesion;
 }

   
 
 // Client methods
 
 public Client clientExist(String phone, String password){
    Session session = HibernateUtil.getSessionFactory().getCurrentSession();
    Client client = new Client();
    client = new ClientDao().clientExist(phone, password);
    session.getTransaction().commit();
    //session.close();
    return client;
 }
 
public void register(Client c, Sesion s, Date d){
        InscrireDao I = new InscrireDao();
    if(this.clientExist(c.getPhone(), c.getPassword()) != null){
        I.register(this.clientExist(c.getPhone(), c.getPassword()), s, d); 
    }
    else{
           this.saveClient(c);
           I.register(this.clientExist(c.getPhone(), c.getPassword()), s, d);
    }
 
    
} 

public void saveClient(Client c){
    Session session = HibernateUtil.getSessionFactory().getCurrentSession();
    ClientDao cdao = new ClientDao();
    cdao.save(c);
    session.getTransaction().commit();
} 



}
