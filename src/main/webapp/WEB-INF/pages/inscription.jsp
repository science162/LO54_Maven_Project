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
        <link rel="stylesheet" href="css/style.css" type="text/css"/>

    </head>
    <body>
        <div class="container">
            <header>
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <a class="navbar-brand" href="#">Navbar</a>
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
            <div class="row" id="titre">
                <form>
                    <div class="form-group">
                        <label for="name">First Name : </label>
                        <input name="fname" type="text" class="form-control"  placeholder="Enter First Name">
                    </div>
                    <div class="form-group">
                        <label for="name">Last Name : </label>
                        <input name="lname" type="text" class="form-control"  placeholder="Enter Last Name">
                    </div>
                    <div class="form-group">
                        <label for="address">Address : </label>
                        <input name="address" type="text" class="form-control"  placeholder="Enter  Address">
                    </div>
                    <div class="form-group">
                        <label for="address">Phone : </label>
                        <input name="phone" maxlength="14" type="text" class="form-control"  placeholder="Enter  Phone Number">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input name="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>

            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" ></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" ></script>
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
