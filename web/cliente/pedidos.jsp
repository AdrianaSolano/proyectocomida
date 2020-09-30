<%-- 
    Document   : pedidos
    Created on : 20/09/2020, 07:38:38 PM
    Author     : adria
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.PedidoDAO"%>
<%@page import="modeloVO.PedidoVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Pedido</title>
    </head>
    <body>
        <h1>consultar Pedido</h1>
        <div class="col-xl-12 col-md-12">
          <div class="ms-panel ms-panel-fh">
            <div class="ms-panel-header">
                <button type="button" class="btn btn-pill btn-success has-icon float-right"><a href="formCliente.jsp"><i class="fa fa-plus"></i> Agregar</a></button>
                <br>
            </div>
              
            <div style="color: red">
                <%if(request.getAttribute("mensajeError")!=null){%>
                ${mensajeError}
                <%}%>
            </div>
            <div class="ms-panel-body">              
              <div class="table-responsive">
                  <form action="PedidoControlador">
                <table class="table thead-primary" id="table_id">
                  <thead>
                    <tr>
                      <th scope="col"> Id</th>
                      <th scope="col">Fecha</th>
                      <th scope="col">Direccion</th>
                      <th scope="col">cant total</th>
                      <th scope="col">Valor </th>
                      <th scope="col">Hora</th>
                    </tr>
                  </thead>
                  
                  <tbody>
                  <%
                      PedidoVO pedVO = new PedidoVO();
                      PedidoDAO pedDAO = new PedidoDAO();
                      
                      ArrayList<PedidoVO> ListarPedidos = pedDAO.listar();
                      for(int i =0; i < ListarPedidos.size(); i++){
                            pedVO = ListarPedidos.get(i);
                      
                  %>    
                    <tr>
                        <td><%=pedVO.getPed_id() %></td>
                        <td><%=pedVO.getPed_fecha() %></td>
                        <td><%=pedVO.getPed_direccion() %></td>
                        <td><%=pedVO.getPed_cant_total() %></td>
                        <td><%=pedVO.getPed_valor() %></td>
                        <td><%=pedVO.getPed_hora() %></td>
                        <td>
                            <a href="PedidoControlador?opcion=3&clieId=<%=pedVO.getPed_id() %>" class="ms-btn-icon btn-pill btn-success"><i class="fa fa-edit"></i></a>
                        </td>
                    </tr>
                  <% }%>
                  </tbody>
                  
                </table>
                  </form>
              </div>
            </div>
          </div>
        </div>
    </body>
</html>

