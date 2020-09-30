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
import modeloVO.ProductoVO;
import util.Conexion;
import util.Crud;

/**
 *
 * @author adria
 */
public class ProductoDAO extends Conexion  implements Crud{
    
    
    //declarar objetos y variables
    private Connection conexion = null;
    private PreparedStatement puente = null;
    private ResultSet mensajero = null;
    
    public boolean operaciones= false;
    public String sql;
    
    // para que no explote
    //usar los mismos nombres de variables para no teener problemas futuros 
    public String pro_id="", pro_nombre="",   pro_precio="", pro_descripcion="", f_tie_id="", f_tipo_pro_id="" ;
      
    public ProductoDAO(ProductoVO  proVO) {
        super();
        
        try {
            conexion = this.obtenerConexion();
            
            pro_id = proVO.getPro_id();
            pro_nombre = proVO.getPro_nombre();
            pro_precio = proVO.getPro_precio();
            pro_descripcion = proVO.getPro_descripcion();
            f_tie_id =proVO.getPro_f_tie_id();
            f_tipo_pro_id =proVO.getPro_f_tipo_pro_id();
            
            
        } catch (Exception e) {
            
        Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null,  e);
            
        }
    }
    


    @Override
    public boolean agregarRegistro() { 
        try {
  
            sql="insert into productos values(null, ?,?,?,?,?)";
            puente =conexion.prepareStatement(sql);
            
            //esto es por segurida, para que no inyecten datos 
            puente.setString(1,  pro_nombre);
            puente.setString(2,  pro_precio);
            puente.setString(3,  pro_descripcion);
            puente.setString(4,  f_tie_id);
            puente.setString(5,  f_tipo_pro_id);
            puente.executeUpdate();
            operaciones = true;
    } catch ( SQLException e) {
               Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, e );

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
  
            sql="update productos set pro_nombre=?, pro_precio=?, pro_descripcion=?, f_tie_id=?, f_tipo_pro_id=? where pro_id=?)";
            puente =conexion.prepareStatement(sql);
            
            //esto es por seguridad, para que no inyecten datos 
            
            puente.setString(1,  pro_nombre);
            puente.setString(2,  pro_precio);
            puente.setString(3,  pro_descripcion);
            puente.setString(4,  f_tie_id);
            puente.setString(5,  f_tipo_pro_id);
            puente.setString(6,  pro_id);
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
    
    
    /*public boolean iniciarSesion(String usuario, String clave) {
         
         
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
     }*/
     
     

}