<%-- 
    Document   : registro
    Created on : 22/08/2020, 03:52:38 PM
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
    
    
    <SCRIPT LANGUAGE="JavaScript">
    function validar_clave() {
        var caract_invalido = " ";
        var caract_longitud = 8;
        var cla1 = document.miformulario.textClave.value;
        var cla2 = document.miformulario.mi_clave2.value;
        
        if (cla1 === '' || cla2 === '') {
            alert('Debes introducir tu clave en los dos campos.');
        return false;
        }
        if (document.miformulario.textClave.value.length < caract_longitud) {
            alert('Tu clave debe constar de ' + caract_longitud + ' caracteres.');
        return false;
        }
        if (document.miformulario.textClave.value.indexOf(caract_invalido) > -1) {
            alert("Las claves no pueden contener espacios");
        return false;
        }
        else {
        if (cla1 !== cla2) {
            alert ("Las claves introducidas no son iguales");
        return false;
        }
        else {
            alert('Contraseña correcta');
        return true;
      }
   }
}
</script>
</head>
<body>

    <div class="form-body" class="container-fluid" >
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
                    
                    <h2>Nunca había sido más fácil hacer un pedido</h2>
                    <br>
                    <p>Comida al instante es un sistema que te va a permitir administrar,consultar y realizar pedidos de la manera mas sencilla y en el menor tiempo posible, estamos en algunos barrios de la localidad de usme, ¿que estas esperando para pedir? las mejores comidas de tus restaurantes favoritos, los mejores productos de tus tiendas habituales.</p>
                    
                    <div class="imagen">
                    <img src="images/comida-y-restaurante.png" >
                </div>
                    <br><br><br>
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
                            <a href="login.jsp">Iniciar Sesión</a><a href="registro.jsp" class="active">Registrarse</a>
                        </div>
                        <form action="Usuario" method="post" onsubmit="return validar_clave()" id="miformulario">
                    
                            <h6>Nombre:</h6>
                            <input type="text" name="textNombre" autofocus  minlength="3" maxlength="30" required>
                            <h6>Apellido:</h6>
                            <input type="text" name="textApellido" autofocus  minlength="3" maxlength="30" required>
                            <h6>Telefono:</h6>
                            <input type="text" name="textTelefono" min="7" max="12" required>
                            <h6>Direccion:</h6>
                            <input type="text" name="textDireccion" minlength="4" maxlength="40" required>
                            <h6>Correo:</h6>
                            <input type="email" name="textCorreo" minlength="20" maxlength="50"  required>
                            <h6>Rol:</h6>
                            <select name="textRol" id="rol" required>
                               <option>Seleccione</option>
                               <option value="1">Administrador</option>
                               <option value="2">Empleado</option>
                               <option value="3">Cliente</option>
  
                            </select>
                            
                            <h6>Contraseña:</h6>
                            <input type="password" name="textClave" maxlength=12 size="20" required>
                            <h6>Repite la Contraseña: </h6>
                            <input type="password" stype="mi_clave" maxlength=12 size="20" required>
                            
                            <!--<p>
                            <input type=submit value="Comprobar">
                            </p> -->
                        
                         <input type="checkbox" id="checkbox" value="boton"> <label for="checkbox">Acepto las politicas de privacidad</label required>
                                
                                <div class="form-button">
                                <button id="submit" href="menu.jsp" class="ibtn">volver</button>
                                <button id="reset" type="reset" class="ibtn">borrar</button>
                                
                                <button id="submit" type="submit" class="ibtn">enviar</button>
                                <input type="hidden" value="1" name="opcion">
                            </div>
                             
                             <div class="ventana" id="vent">
                                <div id="cerrar"> <a href="javascript:cerrar()"><img src="images/x.png"> </a></div>
                                
    <h4>politica de privacidad</h4>

    <p> establece los términos en que Comida al instante usa y protege la información que es proporcionada por sus usuarios al momento de utilizar su sitio web. Esta compañía está comprometida con la seguridad de los datos de sus usuarios. Cuando le pedimos llenar los campos de información personal con la cual usted pueda ser identificado, lo hacemos asegurando que sólo se empleará de acuerdo con los términos de este documento. 


    <h4>información que es recogida</h4>

    <p>Nuestro sitio web podrá recoger información personal por ejemplo: Nombre,  información de contacto como  su dirección de correo electrónica e información demográfica. Así mismo cuando sea necesario podrá ser requerida información específica para procesar algún pedido o realizar una entrega o facturación. </p>

    <center><h4>uso de la información recogida</h4></center>

    <p>Nuestro sitio web emplea la información con el fin de proporcionar el mejor servicio posible, particularmente para mantener un registro de usuarios, de pedidos en caso que aplique, y mejorar nuestros productos y servicios.  Es posible que sean enviados correos electrónicos periódicamente a través de nuestro sitio con ofertas especiales, nuevos productos y otra información publicitaria que consideremos relevante para usted o que pueda brindarle algún beneficio, estos correos electrónicos serán enviados a la dirección que usted proporcione y podrán ser cancelados en cualquier momento.

    Comida al instante está altamente comprometido para cumplir con el compromiso de mantener su información segura. Usamos los sistemas más avanzados y los actualizamos constantemente para asegurarnos que no exista ningún acceso no autorizado.

    </p>

    <center><h4>control de su información personal</h4></center>

    <p>En cualquier momento usted puede restringir la recopilación o el uso de la información personal que es proporcionada a nuestro sitio web. 

    Esta compañía no venderá, cederá ni distribuirá la información personal que es recopilada sin su consentimiento, salvo que sea requerido por un juez con un orden judicial.

    Comida al instante Se reserva el derecho de cambiar los términos de la presente Política de Privacidad en cualquier momento.
    </p>


                            </div>

                            <section id="contenedor">

                             <a href="javascript:abrir()">ver politicas de privacidad</a>
                             <br>
                              <a href="">¿olvidaste tu contraseña?</a>


                         </section>

                         <script>
                            function abrir() {
                                document.getElementById("vent").style.display="block";

                                 }

                                 function cerrar(){
                                    document.getElementById("vent").style.display="none";
                                 }
                            </script>

                          
                        </form>
                        
                        
                        <div style="background-color:rgba(77, 212, 81, 0.6) ; border-radius: 5px; padding: 6px; margin: 4px;">
                        <%  if (request.getAttribute("mensajeError") !=null) { %>

                        ${mensajeError}

                       <% }else {  %>
                       ${mensajeExito}

                       <% } %>
            

                    </div>
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
