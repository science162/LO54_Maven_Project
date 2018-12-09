/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.core.respository;

import fr.utbm.core.entity.Client;
import fr.utbm.core.util.HibernateUtil;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author albert-einst
 */
public class ClientDao implements java.io.Serializable{
    Session session = HibernateUtil.getSessionFactory().getCurrentSession();
    
    public Client getClientById(int id){
         Session session = HibernateUtil.getSessionFactory().getCurrentSession();
         session.beginTransaction();
         Client c = new Client();
         c = (Client)session.get(Client.class, id);
         session.close();
         return c;
    }
    
    public List<Client> listClient(){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        List<Client> lstc = new ArrayList<Client>();
        Query query = session.createQuery("from Client");
        lstc = query.list();
        return lstc;
    }
    
    public List<Client> clientExist(String phone, String password){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        List<Client> lstc = new ArrayList<Client>();
        Query query = session.createQuery("from Client c where c.phone like ? and c.password ?");
        query.setParameter(0, phone);
        query.setParameter(0, password);
        lstc = query.list();
        return lstc;
    }
    
    public void saveCourse(Client C){
         Session session = HibernateUtil.getSessionFactory().getCurrentSession();
         session.beginTransaction();
         session.save(C);        
    }
    
 
    
}
