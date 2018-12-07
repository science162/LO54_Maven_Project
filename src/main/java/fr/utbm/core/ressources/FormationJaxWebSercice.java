/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.core.ressources;
import com.sun.jersey.api.view.Viewable;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;

/**
 *
 * @author albert-einst
 */

@Path("Connexion")
public class FormationJaxWebSercice implements java.io.Serializable{
    
    @GET
    @Produces("text/html")
    public Viewable getMessage(@Context HttpServletRequest request, @Context HttpServletResponse response)throws Exception{
        return new Viewable("/pages/Connexion",this);
    }
  /*  public String getMessage(){
        return"here we are";
    }*/
}
