/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modeloDAO.TiendaDAO;
import modeloVO.TiendaVO;

/**
 *
 * @author adria
 */
@WebServlet(name = "TiendaControlador", urlPatterns = {"/Tienda"})
public class TiendaControlador extends HttpServlet {

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
        
        //primero: recoger datos 
        
        int opcion = Integer.parseInt(request.getParameter("opcion"));
        String tie_id = request.getParameter("textId");
        String tie_nombre = request.getParameter("textNombre");
        String tie_direccion = request.getParameter("textDireccion");
        String tie_telefono = request.getParameter("textTelefono");
        String tie_horario_apertura = request.getParameter("textHapertura");
        String tie_horario_cierre = request.getParameter("textHcierre");
        String f_bar_id = request.getParameter("textBarrio");
        

      
      
      // segundo: mandar datos al VO
  
        TiendaVO tieVO = new TiendaVO(tie_id, tie_nombre, tie_direccion, tie_telefono, tie_horario_apertura, tie_horario_cierre, f_bar_id);
        TiendaDAO tieDAO= new TiendaDAO(tieVO){

        };
     
     
        
        
        switch(opcion) {
         
        case 1:  //agregar registro
          
             if  (tieDAO.agregarRegistro()) { 
                 request.setAttribute("mensajeExito", "El Tienda se registro correctamente");
            } else{
                 request.setAttribute("mensajeError", "El Tienda NO se registro correctamente");
                 
             }
              request.getRequestDispatcher("login.jsp").forward(request, response);
              break;
              
        case 2:  //actualizar registro
                    
             if  (tieDAO.actualizarRegistro()) { 
                 request.setAttribute("mensajeExito", "El Tienda se actualizo correctamente");
            } else{
                 request.setAttribute("mensajeError", "El Tienda  NO se actualizo correctamente");
                 
             }
             break;
             
                
     }
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