/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.core.entity;

import fr.utbm.core.util.HibernateUtil;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author albert-einst
 */ 
public class execute {
    public static void main(String[] argv){
//     ClientDao cdao = new ClientDao();
//        System.out.println(cdao.getClientById(1));
    HibernateUtil hu = new HibernateUtil();
    Date d = new Date();
    System.out.println(new SimpleDateFormat("dd-MM-yy").format(d));
    }
}
