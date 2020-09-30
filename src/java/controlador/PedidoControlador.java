/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modeloDAO.PedidoDAO;
import modeloVO.PedidoVO;


/**
 *
 * @author adria
 */
@WebServlet(name = "PedidoControlador", urlPatterns = {"/Pedido"})
public class PedidoControlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
       
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
         //primero: recoger datos 
        
        System.out.println("**** DATOS PEDIDO ****");
        //int opcion = Integer.parseInt(request.getParameter("opcion"));
        String opcionrecibida = request.getParameter("opcion");
        System.out.println("Recibido: "+opcionrecibida);
        int opcion = Integer.parseInt (opcionrecibida);
        String ped_id = (String) request.getAttribute("textPed_id");
        String ped_fecha = request.getParameter("textPed_fecha");
        String ped_direccion = request.getParameter("textPed_direccion");
        String ped_cant_total = request.getParameter("textPed_cant_total");
        String ped_valor = request.getParameter("textPed_valor");
        String ped_hora = request.getParameter("textPed_hora");

      
      // segundo: mandar datos al VO
  
        PedidoVO pedVO = new PedidoVO(ped_id, ped_fecha, ped_direccion, ped_cant_total,  ped_valor, ped_hora);
        PedidoDAO pedDAO= new PedidoDAO(pedVO);
     
     
        switch(opcion) {
         
        case 1:  //agregar registro
          
             if  (pedDAO.agregarRegistro()) { 
                 request.setAttribute("mensajeExito", "El pedido se registro correctamente");
            } else{
                 request.setAttribute("mensajeError", "El pedido NO se registro correctamente");
                 
             }
              request.getRequestDispatcher("admi/pages/product/realizarPedido.jsp").forward(request, response);
              break;
              
        case 2:  //agregar registro
                    
             if  (pedDAO.actualizarRegistro()) { 
                 request.setAttribute("mensajeExito", "El pedido se actualizo correctamente");
            } else{
                 request.setAttribute("mensajeError", "El pedido  NO se actualizo correctamente");
                 
             }
        break;
         
        case 3:
                pedVO = PedidoDAO.consultarpedido(ped_id);
                if (pedVO !=null) {
                    request.setAttribute("pedidos", pedVO);
                    request.getRequestDispatcher("actualizarPedido.jsp").forward(request, response);
                }else{
                    request.setAttribute("mensajeError", "No se encontro el pedido");
                    request.getRequestDispatcher("pedidos.jsp").forward(request, response);
                }
                break;
     }
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>


    }