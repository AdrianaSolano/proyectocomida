<%-- 
    Document   : registrarVehiculo
    Created on : 1/06/2020, 03:39:29 PM
    Author     : adria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>registrar producto</title>
    </head>
    <body>
        
    <center>
        <h1>Registrar producto</h1>
        <form method="post" action="Producto">
         <table>
                <tr>
                    
                  <th>
                      Nombre<br>
                      <input  type="text" name="textNombre"><br>
                      <br>
                      Marca<br>
                      <input  type="text" name="textMarca"><br>
                      Tipo<br>
                      <input  type="text" name="textTipo"><br>
                      Descripcion<br>
                      <input  type="text" name="textDescripcion"><br>
                     
                      
                  </th>
                </tr>
                
                
            </table><br>
            <button>Registrar</button>
            <input type="hidden" value="1" name="opcion"> 
            
    </form>
        
          <div style="color: red">
             
            <%  if (request.getAttribute("mensajeError") !=null) { %>
                <
            ${mensajeError}
            
           <% }else {  %>
           ${mensajeExito}
           
           <% } %>
            }
                
        </div>
        </center>
        
        
    </body>
</html>