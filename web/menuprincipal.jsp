<%-- 
    Document   : menuprincipal
    Created on : 15-sep-2020, 23:40:32
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--header-->
<div class="w3l-top-header">
  <header id="site-header" class="fixed-top">
    <div class="container">
      <nav class="navbar navbar-expand-lg navbar-dark stroke">
        <a class="navbar-brand" href="#index.jsp">
          <img src="assets/images/10.png" alt="Your logo" title="Your logo" style="height:145px; margin: 0px; padding: 0;" />
        </a>
        <!-- if logo is image enable this   
      <a class="navbar-brand" href="#index.html">
          <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
      </a> -->
        <button class="navbar-toggler  collapsed bg-gradient" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02"
          aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
          <span class="navbar-toggler-icon fa icon-close fa-times"></span>
          </span>
        </button>

        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item @@index-active">
              <a class="nav-link" href="index.jsp">Inicio <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item @@about-active">
              <a class="nav-link effect-3" href="menu/about.jsp">Tiendas</a>
            </li>
            <li class="nav-item @@services-active">
              <a class="nav-link effect-3" href="menu/services.jsp">Restaurantes</a>
            </li>
            <li class="nav-item @@contact-active">
              <a class="nav-link effect-3" href="menu/contact.jsp">Conocenos</a>
            </li>
            <li class="px-4 fill-none">
              <a href="login.jsp" class="btn btn-style btn-secondary">Iniciar Sesión</a>
              </li>
          </ul>
          <div class="popup">
            <a href="#domain" class="domain" data-toggle="modal" data-target="#DomainModal">
              <div class="hamburger1">
                <div></div>
                <div></div>
                <div></div>
              </div>
            </a>
          </div>
        </div>
      </nav>
    </div>
  </header>
</div>
<!--/header-->
    </body>
</html>
