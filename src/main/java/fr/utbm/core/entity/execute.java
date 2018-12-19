/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.core.entity;

import fr.utbm.core.service.Formations;

/**
 *
 * @author albert-einst
 */ 
public class execute {
    public static void main(String[] argv){
        
       for(Location c : new Formations().listCity() ){  
         System.out.println(c.getCity());
         //System.out.println(c.getLocation().getCity());
         //System.out.println(c.getStart_date());
         //System.out.println("---------------------------------------");
         
        }

     /*   Client c  = new Client();
        Sesion s = new Sesion();
        c = new Formations().clientExist("0668350811", "paola.kamdem");
        s = new Formations().getSesion(4);
       // Date d = new Date(System.currentTimeMillis());
        //new Formations().register(c, s, d);
      System.out.println(s.getNbre_inscrit());
     */  
    }
 }
