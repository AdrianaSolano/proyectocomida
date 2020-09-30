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
import modeloDAO.ClienteDAO;
import modeloVO.ClienteVO;
import modeloVO.UsuarioVO;
/**
 *
 * @author Juliana
 */
@WebServlet(name = "ClienteControlador", urlPatterns = {"/cliente"})
public class ClienteControlador extends HttpServlet {

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
        
        int opcion= Integer.parseInt(request.getParameter("opcion"));
         
         String id= request.getParameter("textId");
         String nombre= request.getParameter("textNombre");
         String apellido= request.getParameter("textApellido");
          String correo= request.getParameter("textCorreo");
         String telefono= request.getParameter("textTelefono");
         String direccion= request.getParameter("textDireccion");
         
            ClienteVO cliVO =new ClienteVO(id,nombre,apellido,correo,telefono,direccion);
            ClienteDAO cliDAO = new ClienteDAO(cliVO);  
          switch(opcion){
            
              
      case 1:  //agregar registro
          
             if  (cliDAO.agregarRegistro()) { 
                 request.setAttribute("mensajeExito", "el clienet se registro correctamente");
            } else{
                 request.setAttribute("mensajeError", "El cliente no se registro correctamente");
                 
             }
              request.getRequestDispatcher("registrarCliente.jsp").forward(request, response);
              break;
              
                case 2:  //agregar registro
             if  (cliDAO.actualizarRegistro()) { 
                 request.setAttribute("mensajeExito", "el cliente se actualizo correctamente");
            } else{
                 request.setAttribute("mensajeError", "El cliente  no se actualizo correctamente");
                 
             }
             
               case 3: //inicio de sesion 
                     
                    if (cliDAO.iniciarSesion(id, correo)) {
                        
                        request.getRequestDispatcher("menu.jsp").forward(request, response);
              
             
                    }else {
                         request.setAttribute("mensajeError", "El id y/o el correo son incorrectos");
                        request.getRequestDispatcher("index.jsp").forward(request, response);

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
