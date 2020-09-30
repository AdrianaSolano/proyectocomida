<%-- 
    Document   : actualizarProducto
    Created on : 18/06/2020, 09:08:26 AM
    Author     : Juliana
--%>


<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.ProductoDAO"%>
<%@page import="modeloVO.ProductoVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Producto</title>
    </head>
    <body>
        
      
    <center>
               <h1>actualizar Producto</h1>   
                 <% ProductoVO proVO =(ProductoVO)request.getAttribute("Producto");
                 if (proVO!=null) { %>
                 
    <form method="post" action="Producto">
      

            <table>
                <tr>
                    <th->
                        
                         Nombre <br>
                        <input type="text" name="textNombre" value="<%=proVO.getnombre_pro()%>"><br>
                         Marca <br>
                        <input type="text" name="textMarca" value="<%=proVO.getmarca_pro()%>"><br>
                        Tipo <br>
                        <input type="text" name="textTipo" value="<%=proVO.gettipo_pro()%>"><br>
                         Descripcion <br>
                        <input type="text" name="textDescripcion" value="<%=proVO.getdescripcion_pro()%>"><br>
                         
                        
                    </th>
                    
                </tr>
                
            </table><br><br>
            <button>actualizar</button><br>
            
            <input type="hidden" value="2" name="opcion">
    </form><br><br>
        <% } else{ %>
        
        <% { %>
        
        <a href="consultarProducto.jsp">Volver</a><br><br>
                    
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
 
