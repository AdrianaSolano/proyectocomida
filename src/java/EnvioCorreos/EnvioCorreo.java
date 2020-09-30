/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EnvioCorreos;

import java.awt.Panel;
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

/**
 *
 * @author adria
 */
public class EnvioCorreo {
    public void EnvioCorreo() {
        
                
        Properties propiedad = new Properties();
        propiedad.setProperty("mail.smtp.host", "smtp.gmail.com");
        propiedad.setProperty("mail.smtp.starttls.enable", "true");
        propiedad.setProperty("mail.smtp.port", "587");
        propiedad.setProperty("mail.smtp.auth", "true");
        
        Session session = Session.getDefaultInstance(propiedad);
        
        String correoEnvia = "comidaalinstantee@gmail.com"; // espacion para diligenciar correo electronico
        String cotrasena = "Zay1234567890";//espacion para diligenciar la contrasena del correo electronico
        
        //Variables de envio de correo.s
        
        
        String destinatario = "zazosaba28@gmail.com";
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
}
