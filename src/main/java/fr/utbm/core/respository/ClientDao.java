/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.core.respository;

import fr.utbm.core.entity.Client;
import fr.utbm.core.util.HibernateUtil;
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
}
