<%-- 
    Document   : index
    Created on : 4 déc. 2018, 02:34:33
    Author     : albert-einst
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>Formations</title>
        <%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
        <link rel="icon" href="images/favicon.ico" type="image/x-icon">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css" type="text/css"/>
        

    </head>

    <body>

        <div class="container">

            <header>
                <nav class="navbar navbar-expand-lg navbar-light bg">
                    <a class="navbar-brand" href="#"></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto ">
                            <li class="nav-item active">
                                <a class="nav-link " href="/LO54_maven_project">Formations <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="connexion">Connexion</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link disabled" href="#">Disabled</a>
                            </li>
                        </ul>
                        <form class="form-inline my-2 my-lg-0">
                            <input class="form-control mr-sm-2" name="title" id="navInput" type="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-outline-primary" type="button"  id="search">Search cours</button>
                        </form>
                    </div>
                </nav>
            </header>

            <div class="row">
                <div class="col-md-6 offset-3">
                    <h1 id="titre"> Formations disponibles </h1>
                </div>
            </div>

            <div id="contentSession" class="row">
                
            </div>

            <script src="https://code.jquery.com/jquery-3.1.1.min.js" ></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" ></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" ></script>
            <script src="js/main.js"></script>
            <footer class="page-footer font-small unique-color-dark  pt-4"> 
                <div class="container">
                    <ul class="list-unstyled list-inline text-center py-2">
                        <li class="list-inline-item">
                            <h5 class="mb-1">Register for free</h5>
                        </li>
                    </ul>
                </div>
                <div class="footer-copyright text-center py-3">© 2018 Copyright -Tous droits reservés: Albert Mouaffo - Meimou Sonia</div>
            </footer>
        </div>
    </body>
</html>
