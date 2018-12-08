<%-- 
    Document   : inscription
    Created on : 4 déc. 2018, 02:28:19
    Author     : albert-einst
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Formations</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style1.css" type="text/css"/>

    </head>
    <body>
        <div class="container">
            <header>
                <ul class="nav">
                    <li class="nav-item">
                      <a class="nav-link active" href="/LO54_maven_project">Acceuil</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="connexion">Connextion</a>
                    </li>
                </ul>
            </header>
            
                <form class="formPosition">
                    <fieldset class="connect">
                        <legend class="connect"> Connexion : </legend>
                        <div class="form-group row">
                          <label for="address" class="col-md-2">Phone : </label>
                          <input name="phone" maxlength="14" type="text" class="form-control col-md-6"  placeholder="Enter  Phone Number">
                        </div>
                        <div class="form-group row">
                          <label for="exampleInputPassword1" class="col-md-2">Password : </label>
                          <input name="password" type="password" class="form-control col-md-6" id="exampleInputPassword1" placeholder="Password">
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                   </fieldset>
                </form>
            
            <div>
                <p><br/><a href = "inscrire" >S'inscrire</a></p>
            </div>
            
            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" ></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" ></script>
            <footer>    
            </footer>
        </div>
    </body>
</html>
