/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EnvioCorreos;

import java.awt.Panel;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modeloDAO.UsuarioDAO;
import modeloVO.UsuarioVO;

/**
 *
 * @author user
 */
@WebServlet(name = "EnvioCorreos", urlPatterns = {"/EnvioCorreos"})
public class EnvioCorreos extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
      protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String usu_correo = request.getParameter("textCorreo");
        
        String correoRegistrado="";        
        Properties propiedad = new Properties();
        propiedad.setProperty("mail.smtp.host", "smtp.gmail.com");
        propiedad.setProperty("mail.smtp.starttls.enable", "true");
        propiedad.setProperty("mail.smtp.port", "587");
        propiedad.setProperty("mail.smtp.auth", "true");
        
        Session session = Session.getDefaultInstance(propiedad);
        
        String correoEnvia = "comidaalinstantee@gmail.com"; // espacion para diligenciar correo electronico
        String cotrasena = "Zay1234567890";//espacion para diligenciar la contrasena del correo electronico
        
        //Variables de envio de correo.s
        
        
        String destinatario = correoRegistrado;
        String asunto = "Confirmacion creacion de usuario";
        String correo = "Confirmacion creacion de usuario\n" +
"\n" +
"Coordial saludo:\n" +
"\n" +
"De manera atenta se le informa que el aplicativo COMIDA AL INSTANTE, se permite confirmar la creacion satisfactoria de su usuario.\n" +
"\n" +
"Para acceder al aplicativo dirigase al siguiente link: http://localhost:8080/sistema_domicilios/login/comida_login/by-Comida-al-instante/login/login.jsp\n" +
"\n" +
"\n" +
"------------------------------------------\n" +
"Atentamente\n" +
"COMIDA AL INSTANTE\n" +
"Fecha:24/08/2020 \n" +
"Por favor no responda este correo";
        
        MimeMessage mail = new MimeMessage(session);
        
        try {
            mail.setFrom(new InternetAddress(correoEnvia));
            mail.addRecipient(Message.RecipientType.TO, new InternetAddress(destinatario));
            mail.setSubject(asunto);
            mail.setText(correo);
            
            Transport transporte = session.getTransport("smtp");
            transporte.connect(correoEnvia,cotrasena);
            transporte.sendMessage(mail, mail.getRecipients(Message.RecipientType.TO));
            transporte.close();
            
            //JOptionPane.showMessageDialog(null, "Correo Enviado");
            
        } catch (AddressException ex) {
            Logger.getLogger(Panel.class.getName()).log(Level.SEVERE, null, ex);
        } catch (MessagingException ex) {
            Logger.getLogger(Panel.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}   * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String usu_correo = request.getParameter("textCorreo");
        
        String correoRegistrado="";        
        
        UsuarioVO usuVO = new UsuarioVO(usu_correo);
        UsuarioDAO usuDAO= new UsuarioDAO(usuVO);
        
        if (usuDAO.(usu_correo, usu_clave)) {

                    request.getRequestDispatcher("envioCorreo.jsp").forward(request, response);


                }else {
                     request.setAttribute("mensajeError", "El usuario y/o la contraseña son incorrectos");
                    request.getRequestDispatcher("login.jsp").forward(request, response);

                }
                break;


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
