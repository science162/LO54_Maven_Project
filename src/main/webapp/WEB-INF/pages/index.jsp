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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css" type="text/css"/>

    </head>
    <body>
        <div class="container">
            <header>
                <nav class="navbar navbar-expand-lg navbar-light bg ">
                    <a class="navbar-brand" href="#"></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="/LO54_maven_project">Formations <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="connexion">Connexion</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link disabled" href="#">Disabled</a>
                            </li>
                        </ul>
                        <form class="form-inline my-2 my-lg-0">
                            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search cours</button>
                        </form>
                    </div>
                </nav>
            </header>

            <div class="row">
                <div class="col-md-6 offset-3">
                    <h1 id="titre"> Formations disponibles </h1>
                </div>
            </div>

            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" ></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" ></script>
            <footer class="page-footer font-small unique-color-dark  pt-4"> 
                <div class="container">
                    <ul class="list-unstyled list-inline text-center py-2">
                        <li class="list-inline-item">
                            <h5 class="mb-1">Register for free</h5>
                        </li>
                        <li class="list-inline-item">
                            <a href="inscrire">
                                <button type="button" class="btn btn-lg btn-primary">S'inscrire</button>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="footer-copyright text-center py-3">© 2018 Copyright -Tous droits reservés: Albert Mouaffo - Meimou Sonia</div>
            </footer>
        </div>
    </body>
</html>

