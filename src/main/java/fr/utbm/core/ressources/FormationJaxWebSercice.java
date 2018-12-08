/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.core.ressources;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import org.glassfish.jersey.server.mvc.Viewable;

/**
 *
 * @author albert-einst
 */

@Path("/")
public class FormationJaxWebSercice implements java.io.Serializable{
    
    
    @GET
    @Produces(MediaType.TEXT_HTML)
    public Viewable index() {
        return new Viewable("/index", null);
    }
    
    @Path("/inscrire")
    @GET
    public Viewable inscrire() {
        return new Viewable("/inscription", null);
    }
    
    @Path("/connexion")
    @GET
    public Viewable connect() {
        return new Viewable("/Connexion", null);
    }
}

