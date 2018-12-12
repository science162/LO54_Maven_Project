/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.core.ressources;
import fr.utbm.core.entity.Course;
import fr.utbm.core.service.Formations;
import java.util.ArrayList;
import java.util.List;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.GenericEntity;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
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
    
    @Path("/formation")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Response getListFormation(){
        List<Course> listCours = new ArrayList<Course>();
        listCours = new Formations().listFormation();
        GenericEntity<List<Course>> myEntity = new GenericEntity<List<Course>>(listCours) {};
        return Response.status(200).entity(myEntity).build();
    }
    @Path("/bytitle/{title}")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Response formationByTitle(@PathParam("title") String title) {
        List<Course> listCours = new ArrayList<Course>();
        System.out.println(title);
        listCours = new Formations().listCoursKeyWord(title);
        GenericEntity<List<Course>> myEntity = new GenericEntity<List<Course>>(listCours) {};
        return Response.status(200).entity(myEntity).build();
    }
    
}

