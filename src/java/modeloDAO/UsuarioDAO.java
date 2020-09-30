/*
  * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import modeloVO.UsuarioVO;
import util.Conexion;
import util.Crud;

/**
 *
 * @author adria
 */
public class UsuarioDAO extends Conexion  implements Crud{
    
    
    //declarar objetos y variables
    private Connection conexion = null;
    private PreparedStatement puente = null;
    private ResultSet mensajero = null;
    
    public boolean operaciones= false;
    public String sql;
    
    // para que no explote
    //usar los mismos nombres de variables para no teener problemas futuros
    public String usu_id="", usu_nombre="", usu_apellido="", usu_clave="", usu_correo="", usu_telefono="", usu_direccion="", f_rol_id="";        ;

    
            
    public UsuarioDAO(UsuarioVO  usuVO) {
        super();
        
        try {
            conexion = this.obtenerConexion();
            
            usu_id = usuVO.getUsu_id();
            usu_nombre = usuVO.getUsu_nombre();
            usu_apellido = usuVO.getUsu_apellido();
            usu_clave = usuVO.getUsu_clave();
            usu_correo =usuVO.getUsu_correo();
            usu_telefono =usuVO.getUsu_telefono();
            usu_direccion =usuVO.getUsu_direccion();
            f_rol_id =usuVO.getF_rol_id();
            
            
        } catch (Exception e) {
            
        Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null,  e);
            
        }
    }
    


    @Override
    public boolean agregarRegistro() { 
        try {
  
            sql="insert into usuarios values(null, ?,?,?,?,?,?,?)";
            puente =conexion.prepareStatement(sql);
            
            //esto es por segurida, para que no inyecten datos 
            puente.setString(1,  usu_nombre);
            puente.setString(2,  usu_apellido);
            puente.setString(3,  usu_clave);
            puente.setString(4,  usu_correo);
            puente.setString(5,  usu_telefono);
            puente.setString(6,  usu_direccion);
            puente.setString(7,  f_rol_id);
            puente.executeUpdate();
            operaciones = true;
    } catch ( SQLException e) {
               Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e );

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
  
            sql="update usuarios set usu_nombre=?,usu_apellido=?,usu_clave=?, usu_correo=?,usu_telefono=?, usu_direccion=?,f_rol_id=? where usu_id=?)";
            puente =conexion.prepareStatement(sql);
            
            //esto es por seguridad, para que no inyecten datos 
            
            puente.setString(1,  usu_nombre);
            puente.setString(2,  usu_nombre);
            puente.setString(3,  usu_clave);
            puente.setString(4,  usu_correo);
            puente.setString(5,  usu_telefono);
            puente.setString(6,  usu_direccion);
            puente.setString(7,  f_rol_id);
            puente.setString(8,  usu_id);
            puente.executeUpdate();
            operaciones = true;
    } catch ( SQLException e) {
               Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e );

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
             
             sql="select * from usuarios where usu_correo=? and usu_clave=? ";
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