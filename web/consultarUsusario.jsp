<%-- 
    Document   : consultarVehiculo
    Created on : 8/06/2020, 02:34:16 PM
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
        <h1>consultar usuario</h1>
        
        <form method="post" action="Usuario">
            <table>
                <tr>
                    <th>
                        
                        Ingrese nombre: <br>
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
                    
        </div><br><br>
        
        <form>
            
              <table style="border: 1px solid black;">
                    
                    <tr>
                        <th>nombre</th>
                        <th>apellido</th>
                        <th>contraseña</th>
                        <th>rol</th>
                        
                    </tr>
                    
                    <tr>
                        
                            
                      <% 
                    UsuarioVO usuVO = new UsuarioVO() ;
                      UsuarioDAO usuDAO = new UsuarioDAO() ;
              
                      
                    
                      
                      ArrayList<UsuarioVO> listarUsuario = usuDAO.listar();
                     
                      for (int i =0; i<listarUsuario.size();i++) {
                          usuVO = listarUsuario.get(i);
                      
                           %>

                      
                     
                    </tr>
                    <td><%=usuVO.getNombre_usu()%></td>
                     <td><%=usuVO.getApellido_usu()%></td>
                      <td><%=usuVO.getContraseña_usu()%></td>    
                      <td><%=usuVO.getRol_usu()%></td>
                                
                                           
              </tr>
              <% } %>
                </table>
                
            </table>
                
               
            
        </form>
        
        
        </center>
    </body>
</html>
