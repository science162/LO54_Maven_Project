/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.core.ressources;
import fr.utbm.core.entity.Client;
import fr.utbm.core.entity.ClientRegister;
import fr.utbm.core.entity.Course;
import fr.utbm.core.entity.Sesion;
import fr.utbm.core.service.Formations;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
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
    public Viewable inscrire(@QueryParam("id_session") int id_session) {
        Sesion s = new Sesion();
        s = new Formations().getSesion(id_session);
        return new Viewable("/inscription", s);
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
    
    @Path("/session")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Response getListSession(){
        List<Sesion> listCours = new ArrayList<Sesion>();
        listCours = new Formations().listSession();
        GenericEntity<List<Sesion>> myEntity = new GenericEntity<List<Sesion>>(listCours) {};
        return Response.status(200).entity(myEntity).build();
    }
    
    @Path("/sessionTitle{title}")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Response getListSessionByCourseTitle(@PathParam("title") String title){
        List<Sesion> listCours = new ArrayList<Sesion>();
        listCours = new Formations().listSessionByCourse(title);
        GenericEntity<List<Sesion>> myEntity = new GenericEntity<List<Sesion>>(listCours) {};
        return Response.status(200).entity(myEntity).build();
    }
    
    @Path("/sessionFilter")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Response getListSessionFilter(
            @QueryParam("date") String date,
            @QueryParam("title") String title,
            @QueryParam("city") String city)
            {
        List<Sesion> listCours = new ArrayList<Sesion>();
        listCours = new Formations().listSessionFilter(date, title, city);
        GenericEntity<List<Sesion>> myEntity = new GenericEntity<List<Sesion>>(listCours) {};
        return Response.status(200).entity(myEntity).build();
    }
    
    @Path("/sessionCity{city}")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Response getListSessionByCourseCity(@PathParam("city") String city){
        List<Sesion> listCours = new ArrayList<Sesion>();
        listCours = new Formations().listSessionByCity(city);
        GenericEntity<List<Sesion>> myEntity = new GenericEntity<List<Sesion>>(listCours) {};
        return Response.status(200).entity(myEntity).build();
    }
    
    @Path("/sessionStartDate{start_date}")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Response getListSessionByCourseStartDate(@PathParam("start_date") String start_date){
        List<Sesion> listCours = new ArrayList<Sesion>();
        listCours = new Formations().listSessionBStartDate(Date.valueOf(start_date));
        GenericEntity<List<Sesion>> myEntity = new GenericEntity<List<Sesion>>(listCours) {};
        return Response.status(200).entity(myEntity).build();
    }
    
    @Path("/sessionEndDate{end_date}")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Response getListSessionByCourseEndDate(@PathParam("end_date") String end_date){
        List<Sesion> listCours = new ArrayList<Sesion>();
        listCours = new Formations().listSessionByEndDate(Date.valueOf(end_date));
        GenericEntity<List<Sesion>> myEntity = new GenericEntity<List<Sesion>>(listCours) {};
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
    
    
    @Path("/subscribe")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response subscribe(ClientRegister c){ 
         Client client = c.getClient();
         int id_session = c.getId_session();
         Sesion s = new Sesion();
         Formations f = new Formations();
         s = f.getSesion(id_session);
         Date d = new Date(System.currentTimeMillis());
         f.register(client, s, d);
       return Response.status(200).entity(client).build();
    }
}

