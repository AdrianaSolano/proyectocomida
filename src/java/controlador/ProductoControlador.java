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
import modeloDAO.ProductoDAO;
import modeloVO.ProductoVO;

/**
 *
 * @author user
 */
@WebServlet(name = "ProductoControlador", urlPatterns = {"/Producto"})
public class ProductoControlador extends HttpServlet {

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
        
        int opcion = Integer.parseInt(request.getParameter("opcion"));
        String pro_id = request.getParameter("textId");
        String pro_nombre = request.getParameter("textNombre");
        String pro_precio = request.getParameter("textPrecio");
        String pro_descripcion = request.getParameter("textDescripcion");
        String pro_f_tie_id = request.getParameter("textTie_id");
        String pro_f_tipo_pro_id = request.getParameter("textTipo_pro");

        
      
      // segundo: mandar datos al VO
  
        ProductoVO proVO = new ProductoVO(pro_id, pro_nombre, pro_precio, pro_descripcion, pro_f_tie_id, pro_f_tipo_pro_id);
        ProductoDAO proDAO =new ProductoDAO(proVO);
     
     
        switch(opcion) {
         
        case 1:  //agregar registro
          
             if  (proDAO.agregarRegistro()) { 
                 request.setAttribute("mensajeExito", "El Producto se registro correctamente");
            } else{
                 request.setAttribute("mensajeError", "El Producto NO se registro correctamente");
                 
             }
              request.getRequestDispatcher("registrarProducto.jsp").forward(request, response);
              break;
              
        case 2:  //actualizar registro
                    
             if  (proDAO.actualizarRegistro()) { 
                 request.setAttribute("mensajeExito", "El Producto se actualizo correctamente");
            } else{
                 request.setAttribute("mensajeError", "El Producto  NO se actualizo correctamente");
                 
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
