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
        <%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
        <link rel="icon" href="images/favicon.ico" type="image/x-icon">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css" type="text/css"/>

    </head>
    <body>
        <div class="container">
            <header>
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto ">
                            <li class="nav-item active">
                                <a class="nav-link" href="/LO54_maven_project">Formations <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link " href="connexion">Connexion</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>
            
            <div>

            </div>
                <form class="sessionPosition">
                    <fieldset class="connect">
                        <legend class="connect">Session Informations</legend>
                        <div class="form-group row">
                            <label for="name" class="col-md-6">Cours : ${it.course.title}</label>
                        </div>
                        <div class="form-group row">
                            <label for="name" class="col-md-4">Start : ${it.start_date}</label>
                        </div>
                        <div class="form-group row">
                            <label for="name" class="col-md-4">End : ${it.end_date}</label>
                        </div>
                        <div class="form-group row">
                            <label for="name" class="col-md-4">Location : ${it.location.city}</label>
                        </div>
                    </fieldset>
                </form>

                <form class="formPosition">
                    <fieldset class="connect">
                        <legend class="connect"> Inscription : </legend>
                        <div class="form-group row">
                            <label for="fname" class="col-md-2">First Name :  </label>
                            <input id="fname" name="fname" type="text" class="form-control col-md-4"  placeholder="Enter First Name">
                        </div>
                        <div class="form-group row">
                            <label for="lname" class="col-md-2">Last Name : </label>
                            <input id="lname" name="lname" type="text" class="form-control col-md-4"  placeholder="Enter Last Name">
                        </div>
                        <div class="form-group row">
                            <label for="address" class="col-md-2">Address : </label>
                            <input id="address" name="address" type="text" class="form-control col-md-4"  placeholder="Enter  Address">
                        </div>
                        <div class="form-group row">
                            <label for="phone" class="col-md-2">Phone : </label>
                            <input id="phone" name="phone" maxlength="14" type="text" class="form-control col-md-4"  placeholder="Enter  Phone Number">
                        </div>
                        <div class="form-group row">
                            <label for="email" class="col-md-2">Email address</label>
                            <input id="email" name="email" type="email" class="form-control col-md-4"  aria-describedby="emailHelp" placeholder="Enter email">
                        </div>
                        <div class="form-group row">    
                            <label for="password" class="col-md-2">Password</label>
                            <input id="password" name="password" type="password" class="form-control col-md-4"  placeholder="Password">
                        </div>
                        <div class="form-group row">
                            <label for="id_session" class="col-md-2">Session :  </label>
                            <input id="id_session" name="id_session" type="text" class="form-control col-md-4" disabled value="${it.id_session}"  placeholder="Enter First Name">
                        </div>
                        <button type="button" class="btn btn-primary" id="inscriptionBtn" data-toggle="modal" data-target="#ModalCenter">Submit</button>
                        
                      
                    </fieldset>
                    
                </form>
                  
                  <!-- Modal -->
                  <div class="modal fade" id="ModalCenter" tabindex="-1" role="dialog" aria-labelledby="ModalCenterTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h4 class="modal-title" id="ModalCenterTitle"> </h4>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                        </div>
                        <div class="modal-body">
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </div>
                      </div>
                    </div>
                  </div>
  
                <script src="https://code.jquery.com/jquery-3.1.1.min.js" ></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" ></script>
                <script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" ></script>
                <script src="js/main.js"></script>
            <footer class="page-footer font-small unique-color-dark pt-4"> 
                <div class="container">
                    <ul class="list-unstyled list-inline text-center py-2">
                        <li class="list-inline-item">
                            <h5 class="mb-1">Register for free</h5>
                        </li>
                        <li class="list-inline-item">
                            <a href="#!" class="btn btn-outline-white btn-rounded">Sign up!</a>
                        </li>
                    </ul>
                </div>
                <div class="footer-copyright text-center py-3">© 2018 Copyright:</div>
            </footer>
        </div>
    </body>
</html>
