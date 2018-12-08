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
        <link rel="stylesheet" href="style1.css" type="text/css"/>

    </head>
    <body>
        <div class="container">
            <header>
                <ul class="nav">
                    <li class="nav-item">
                      <a class="nav-link active" href="#">Acceuil</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="serve">Inscrption</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="serve">Connextion</a>
                    </li>
                </ul>
            </header>
            
            <div class="row" id="titre">
                <form>
                    <div class="form-group">
                      <label for="name">First Name : </label>
                      <input name="fname" type="text" class="form-control"  placeholder="Enter First Name">
                      <small  class="form-text text-muted">We'll never share your Name with anyone else.</small>
                    </div>
                    <div class="form-group">
                      <label for="name">Last Name : </label>
                      <input name="lname" type="text" class="form-control"  placeholder="Enter Last Name">
                      <small class="form-text text-muted">We'll never share your Name with anyone else.</small>
                    </div>
                    <div class="form-group">
                      <label for="address">Address : </label>
                      <input name="address" type="text" class="form-control"  placeholder="Enter  Address">
                      <small class="form-text text-muted">We'll never share your Address with anyone else.</small>
                    </div>
                    <div class="form-group">
                      <label for="address">Phone : </label>
                      <input name="phone" maxlength="14" type="text" class="form-control"  placeholder="Enter  Phone Number">
                      <small class="form-text text-muted">We'll never share your Phone Number with anyone else.</small>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Email address</label>
                      <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                      <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
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
            <footer>    
            </footer>
        </div>
    </body>
</html>
