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
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import modeloVO.TiendaVO;
import util.Conexion;
import util.Crud;

/**
 *
 * @author user
 */
public abstract class TiendaDAO extends Conexion implements Crud{

        
    //Primero declarar las variables y definir puerta, puente y mensajero.
    private Connection conexion = null;
    private PreparedStatement puente = null;
    private ResultSet mensajero = null;
    
    // se utiliza para cambiar el valor y retornar la variable con el valor de DAO
    public boolean operaciones = false;
    public String sql;
    
    //se reciben los valores de las variables del de vo y se declaran otras
    //variables para recibir esos valores
    public String tie_id = "", tie_nombre = "", tie_direccion = "", tie_telefono = "", tie_horario_apertura = "", tie_horario_cierre = "", f_bar_id = "";
    
    public TiendaDAO(TiendaVO tieVO ){
        super();
        
        try {
        conexion = this.obtenerConexion();
        tie_id=tieVO.getTie_id();
        tie_nombre=tieVO.getTie_nombre();
        tie_direccion=tieVO.getTie_direccion();
        tie_telefono=tieVO.getTie_telefono();
        tie_horario_apertura=tieVO.getTie_horario_apertura();
        tie_horario_cierre =tieVO.getTie_horario_cierre();
        f_bar_id=tieVO.getF_bar_id();  
            
        } catch (Exception e) {
            
            Logger.getLogger(TiendaDAO.class.getName()).log(Level.SEVERE, null, e);
        }
         
    }

    
    /*public boolean Listar() {
         
        try {
            sql="select * from tiendas ";
            puente = conexion.prepareStatement(sql);
            puente.setString(1,tie_codigo );
            puente.setString(2,tie_nombre );
            puente.setString(3,tie_direccion );
            puente.setString(4,tie_telefono);
            puente.setString(5,horario_apertura);
            puente.setString(6, horario_cierre );
            puente.executeUpdate();
            operaciones = true;
            
        } catch (SQLException e) {
            Logger.getLogger(TiendaDAO.class.getName()).log(Level.SEVERE, null, e);
        }finally{
            try{
                this.cerrarConexion();
            }catch(SQLException e){
                Logger.getLogger(TiendaDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operaciones;
    }

      
    */ 

    @Override
    
    public boolean agregarRegistro() {
        try {
            sql="insert into tiendas values(null,?,?,?,?,?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1,tie_nombre );
            puente.setString(2,tie_direccion );
            puente.setString(3,tie_telefono);
            puente.setString(4,tie_horario_apertura);
            puente.setString(5,tie_horario_cierre);
            puente.setString(6, f_bar_id );
            puente.executeUpdate();
            operaciones = true;
            
        } catch (SQLException e) {
            Logger.getLogger(TiendaDAO.class.getName()).log(Level.SEVERE, null, e);
        }finally{
            try{
                this.cerrarConexion();
            }catch(SQLException e){
                Logger.getLogger(TiendaDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operaciones;
    }

    public boolean actualizarTienda() {
        try {
            sql="update tiendas set tie_nombre=?,tie_direccion =?,tie_telefono=?,tie_horario_apertura=?,tie_horario_cierre=?, f_bar_id=? where tie_id=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1,tie_nombre );
            puente.setString(2,tie_direccion );
            puente.setString(3,tie_telefono );
            puente.setString(4,tie_horario_apertura );
            puente.setString(5, tie_horario_cierre );
            puente.setString(6, f_bar_id );
            puente.setString(7,tie_id );

            puente.executeUpdate();
            operaciones = true;
           
            
        } catch (SQLException e) {
            Logger.getLogger(TiendaDAO.class.getName()).log(Level.SEVERE, null, e);
        }finally{
            try{
                this.cerrarConexion();
            }catch(SQLException e){
                Logger.getLogger(TiendaDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operaciones;
    }

  
  
    
    
    
    

}