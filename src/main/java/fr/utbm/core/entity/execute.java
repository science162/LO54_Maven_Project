/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.core.entity;

import fr.utbm.core.respository.ClientDao;

/**
 *
 * @author albert-einst
 */
public class execute {
    public static void main(String[] argv){
        ClientDao cdao = new ClientDao();
        System.out.println(cdao.getClientById(1));
    }
}
