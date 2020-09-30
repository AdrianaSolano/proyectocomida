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
import modeloDAO.UsuarioDAO;
import modeloVO.UsuarioVO;



/**
 *
 * @author adria
 */
@WebServlet(name = "UsuarioControlador", urlPatterns = {"/Usuario"})
public class UsuarioControlador extends HttpServlet {

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
        String usu_id = request.getParameter("textId");
        String usu_nombre = request.getParameter("textNombre");
        String usu_apellido = request.getParameter("textApellido");
        String usu_clave = request.getParameter("textClave");
        String usu_correo = request.getParameter("textCorreo");
        String usu_telefono = request.getParameter("textTelefono");
        String usu_direccion = request.getParameter("textDireccion");
        String f_rol_id = request.getParameter("textRol");

        
      
      // segundo: mandar datos al VO
  
        UsuarioVO usuVO = new UsuarioVO(usu_id, usu_nombre,usu_apellido, usu_clave, usu_correo, usu_telefono, usu_direccion, f_rol_id);
        UsuarioDAO usuDAO= new UsuarioDAO(usuVO);
     
     
        switch(opcion) {
         
        case 1:  //agregar registro
          
             if  (usuDAO.agregarRegistro()) { 
                 request.setAttribute("mensajeExito", "El usuario se registro correctamente");
            } else{
                 request.setAttribute("mensajeError", "El usuario NO se registro correctamente");
                 
             }
              request.getRequestDispatcher("login.jsp").forward(request, response);
              break;
              
        case 2:  //actualizar registro
                    
             if  (usuDAO.actualizarRegistro()) { 
                 request.setAttribute("mensajeExito", "El usuario se actualizo correctamente");
            } else{
                 request.setAttribute("mensajeError", "El usuario  NO se actualizo correctamente");
                 
             }
             break;
             
        case 3: //inicio de sesion 
                     
                if (usuDAO.iniciarSesion(usu_correo, usu_clave)) {

                    request.getRequestDispatcher("admi/index.html").forward(request, response);


                }else {
                     request.setAttribute("mensajeError", "El usuario y/o la contraseña son incorrectos");
                    request.getRequestDispatcher("login.jsp").forward(request, response);

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