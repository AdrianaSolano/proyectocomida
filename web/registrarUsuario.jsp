<%--    
    Document   : registrarUsuario
    Author     :juliana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuario</title>
    </head>
    <body>
    <center>
        <h1>Registrar usuario</h1>
        <form method="post" action="Usuario">
        <table>
            <tr>
                Usuario:<br>
            <input type="text" name="textUsuario"><br>
                Contraseña:<br>
            <input type="password" name="textClave"><br>
            </tr>
        </table> <br>
        <button>Registrar</button>
        
        <input type="hidden" value="1" name="opcion">
        </form>
        
        
        <div>
            <%  if (request.getAttribute("mensajeError") !=null) { %>
                
            ${mensajeError}
            
           <% }else {  %>
           ${mensajeExito}
           
           <% } %>
            }
                
        </div>
        </center>
    </body>
</html>