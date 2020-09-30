/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import modeloVO.ClienteVO;
import util.Conexion;
import util.Crud;


/**
 *
 * @author Juliana
 */
public class ClienteDAO extends Conexion implements Crud {
       
    //declarar objetos y variables
    private Connection conexion = null;
    private PreparedStatement puente = null;
    private ResultSet mensajero = null;
    
    
    public boolean operaciones=false;
    public String sql;
    
    private String cliId="",cliNombre="",cliApellido="",cliCorreo="",cliTelefono="",cliDireccion="";

  public ClienteDAO(ClienteVO  cliVO ) {
        super();
        
        try {
            conexion = this.obtenerConexion();
            
            cliId=cliVO.getCliId();
            cliNombre=cliVO.getCliNombre();
            cliApellido=cliVO.getCliApellido();
            cliCorreo=cliVO.getCliCorreo();
            cliTelefono=cliVO.getCliTelefono();
            cliDireccion=cliVO.getCliDireccion();
           
       
            
            
        } catch (Exception e) {
            
        Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null,  e);
            
        }
    } 
   
    @Override
    public boolean agregarRegistro() {
    try {
  
            sql="insert into usuario values(null, ?,?,?,?,?,?)";
            puente =conexion.prepareStatement(sql);
            
            //esto es por segurida, para que no inyecten datos 
            puente.setString(1,cliId  );
            puente.setString(2,cliNombre );
            puente.setString(3,cliApellido  );
            puente.setString(4,cliCorreo );
             puente.setString(5,cliTelefono );
              puente.setString(6,cliDireccion );
            puente.executeUpdate();
            operaciones = true;
    } catch ( SQLException e) {
               Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, e );

    }finally{
            try{
                this.cerrarConexion();
            } catch (SQLException e) {
                
            }
        }
        return operaciones;
    } 
      @Override
    public boolean actualizarRegistro() {
       try {
  
            sql="update usuario set cliNombre =?, cliApellido=?,cliCorreo =?,cliTelefono=?,cliDirecci=?  where cliId=?)";
            puente =conexion.prepareStatement(sql);
            
            //esto es por seguridad, para que no inyecten datos 
            
            puente.setString(1,cliId  );
            puente.setString(2,cliNombre );
            puente.setString(3,cliApellido  );
            puente.setString(4,cliCorreo );
            puente.setString(5,cliTelefono );
            puente.setString(6,cliDireccion );
            puente.executeUpdate();
            operaciones = true;
    } catch ( SQLException e) {
               Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, e );

    }finally{
            try{
                this.cerrarConexion();
            } catch (SQLException e) {
                
            }
        }
        return operaciones;
      
    }
     public boolean iniciarSesion(String usuario, String clave) {
         
         
         try{
             conexion = this.obtenerConexion();
             sql="select * from usuario where nombre_usu=? and contraseña_usu=? ";
             puente = conexion.prepareStatement(sql);
             puente.setString(1, usuario);
             puente.setString(2, clave);
             mensajero = puente.executeQuery();
             if (mensajero.next()) {
                 operaciones = true;
             }
             
         } catch (SQLException e) {
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e );
         } finally{
             try{
                 this.cerrarConexion();
                 
             }catch (SQLException e )  {
                    Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e );
             }
             
         }
         
         return operaciones;
     }
 

}

    
    
   

 
            
            
