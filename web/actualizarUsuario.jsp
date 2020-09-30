<%-- 
    Document   : actualizarUsuario
    Created on : 8/06/2020, 02:45:34 PM
    Author     : adria
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.UsuarioDAO"%>
<%@page import="modeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuario</title>
    </head>
    <body>
        
      
    <center>
               <h1>actualizar Usuario</h1>   
                 <% UsuarioVO usuVO =(UsuarioVO)request.getAttribute("Usuario");
                 if (usuVO!=null) { %>
                 
    <form method="post" action="Usuario">
      

            <table>
                <tr>
                    <th>
                        
                         Nombre <br>
                        <input type="text" name="textNombre" value="<%=usuVO.getNombre_usu()%>"><br>
                         Apellido <br>
                        <input type="text" name="textApellido" value="<%=usuVO.getApellido_usu()%>"><br>
                         Contraseña <br>
                        <input type="text" name="textContraseña" value="<%=usuVO.getContraseña_usu()%>"><br>
                         Rol <br>
                        <input type="text" name="textRol" value="<%=usuVO.getRol_usu()%>"><br>
                         
                        
                    </th>
                    
                </tr>
                
            </table><br><br>
            <button>actualizar</button><br>
            
            <input type="hidden" value="2" name="opcion">
    </form><br><br>
        <% } else{ %>
        
        <% { %>
        
        <a href="consultarUsuario.jsp">Volver</a><br><br>
                    
        <div style="color: red">
            
            <%if   (request.getAttribute("mensajeError")   != null)   {    %>
            $ {mensajeError}
           
            <%}else { %>
            ${mensajeExito}
            <% }%>
                    

        </div>
             </center>  
     
    </body>
</html>