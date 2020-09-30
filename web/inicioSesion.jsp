<%-- 
    Document   : index
    Created on : 5/06/2020, 09:03:35 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Comida al instante</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/fontawesome-all.min.css">
    <link rel="stylesheet" type="text/css" href="css/iofrm-style.css">
    <link rel="stylesheet" type="text/css" href="css/iofrm-theme8.css">
    <link rel="stylesheet" href="text/css" href="css/estilos.css">
</head>
<body>
    <div class="form-body" class="container-fluid">
        <div class="website-logo">
            <a href="index.html">
                <div class="logo">
                    <img class="logo-size" src="../LOGO/logoblanco.png" alt="">
                </div>
            </a>
        </div>
        <div class="row">
            <div class="img-holder">
                <div class="bg"></div>
                <div class="info-holder">
                    <h2>Nunca había sido más fácil</h2>
                    <p>Las mejores comidas de tus restaurantes favoritos a la puerta de tu casa</p>
                    <img src="images/login2.jpg" alt="">
                </div>
            </div>
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                        <div class="">
                            <a href="../../../../index.html">
                                <div class="logo">
                                    <img class="logo-size" src="../LOGO/logoblanco.png" alt="" width="220" height="230">
                                </div>
                            </a>
                        </div>
                        <div class="page-links">
                            <a href="login.html" class="active">Login</a><a href="registro.html">Registrarse</a>
                        </div>


                        <form>
                           <h6>correo: </h6><input type="email" name="correo" autofocus minlength="20" maxlength="50"required>
                           <h6>contraseña: </h6><input type="password" name="contraseña" required minlength="8" maxlength="20">
                            <div class="form-button">
                                <button id="boton" onclick="location.href='../../../../index.html'" class="ibtn">volver</button>
                                 <button id="reset" type="reset" class="ibtn">borrar</button>
                                <button id="submit" onclick="location.href='../../../../dashboard.html'" type="submit" class="ibtn">entrar</button>
                                </div>
                               
                        </form>
                          

                  
                    </div>
                </div>
            </div>
        </div>
    </div>
        
    <script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/popper.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/main.js"></script>
        <div style="color: red">
            <% if(request.getAttribute("mensajeError")!=null) { %>
            ${mensajeError}
            <%}else{%>
            ${mensajeExito}
            <%} %>
 
        </div>
    </body>
</html>
