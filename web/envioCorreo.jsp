<%-- 
    Document   : envioCorreo.jsp
    Created on : 24-ago-2020, 0:50:44
    Author     : user
--%>

<%@page import="EnvioCorreos.EnvioCorreo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <form method="post">
        <li class="nav-item">
            <button id="submit" onclick="<% EnvioCorreo ec = new EnvioCorreo();
                ec.EnvioCorreo(); %>" type="<div>submit</div>" class="ibtn">Enviar Correo</button>

            <!--<a class="nav-link js-scroll-trigger" href="">Listar Barrios</a>-->
        </li>

        
    </body>
</html>
