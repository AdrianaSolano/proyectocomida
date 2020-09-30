<%-- 
    Document   : login
    Created on : 22/08/2020, 03:52:24 PM
    Author     : adria
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
            <a href="index.jsp">
                <div class="logo">
                    <img class="logo-size" src="LOGO/logoblanco.png" alt="">
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
                            <a href="index.jsp">
                                <div class="logo">
                                    <img class="logo-size" src="LOGO/logoblanco.png" alt="" width="220" height="230">
                                </div>
                            </a>
                        </div>
                        <div class="page-links">
                            <a href="login.jsp" class="active" >Iniciar Sesion</a>
                            <a href="registro.jsp">Registrarse</a>
                        </div>


                        <form method="post" action="Usuario">
                           <h6>Correo: </h6>
                           <input type="email" name="textCorreo" autofocus minlength="15" maxlength="50"required>
                           <h6>Contraseña: </h6>
                           <input type="password" name="textClave" required minlength="8" maxlength="20"required>
                           
                           <div>
                                <% if(request.getAttribute("mensajeError")!=null) { %>
                                ${mensajeError}
                                <%}else{%>
                                ${mensajeExito}
                                <%} %>

                            </div>
                            <div class="form-button">
                                
                                <button id="reset" type="reset" class="ibtn">borrar</button>
                                <button id="submit" href="menu.jsp" class="ibtn">volver</button> 
                                <input type="hidden" value="3" name="opcion">
                                <button id="submit" type="submit" class="ibtn">Entrar</button>
                                
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
        
    </body>
</html>