<%-- 
    Document   : consultarProducto
    Created on : 18/06/2020, 09:06:59 AM
    Author     : Juliana
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modeloVO.UsuarioVO"%>
<%@page import="modeloDAO.ProductoDAO"%>
<%@page import="modeloDAO.UsuarioDAO"%>
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
        <h1>Consultar producto</h1>
        
        <form method="post" action="Producto">
            <table>
                <tr>
                    <th>
                        
                        Ingrese placa: <br>
                        <input type="text" name="textNombre">
                        
                    </th>
                    
                </tr>
                
            </table><br><br>
            <button>consultar</button><br>
            
        </form>
        
        <div style="color: red">
            <%if   (request.getAttribute("mensajeError")   != null)   {    %>
            $ {mensajeError}
            <%}%>
                    
        </div>
        <form>
            
              <table style="border: 1px solid black;">
                    
                    <tr>
                        <th>nombre</th>
                        <th>marca</th>
                        <th>precio</th>
                        <th>tipo</th>
                        <th>descripcion</th>
                        
                    </tr>
                    
                    <tr>
                        
                            
                      <% 
                    ProductoVO proVO = new ProductoVO() ;
                     ProductoDAO proDAO = new ProductoDAO() ;
              
                      
                    
                      
                      ArrayList<ProductoVO> listarProducto = proDAO.listar();
                     
                      for (int i =0; i<listarProducto.size();i++) {
                          proVO = listarProducto.get(i);
                      
                           %>

                      
                     
                    </tr>
                    <td><%=proVO.getnombre_pro()%></td>
                     <td><%=proVO.getmarca_pro()%></td>
                      <td><%=proVO.gettipo_pro()%></td>    
                      <td><%=proVO.getdescripcion_pro()%></td>
                                
                                           
              </tr>
              <% } %>
                </table>
                
           
                
               
            
        </form>
        
        </center>
    </body>
</html>
