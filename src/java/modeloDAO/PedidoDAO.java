/*
  * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modeloVO.PedidoVO;
import util.Conexion;
import util.Crud;

/**
 *
 * @author adria
 */
public class PedidoDAO extends Conexion  implements Crud{

    public static PedidoVO consultarpedido(String ped_id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
    //declarar objetos y variables
    private Connection conexion = null;
    private PreparedStatement puente = null;
    private ResultSet mensajero = null;
    
    public boolean operaciones= false;
    public String sql;
    
    // para que no explote
    //usar los mismos nombres de variables para no teener problemas futuros
    public String  ped_id="", ped_fecha="", ped_direccion="", ped_cant_total="",  ped_valor="", ped_hora="";        

    
            
    public PedidoDAO(PedidoVO  pedVO) {
        super();
        
        try {
            conexion = this.obtenerConexion();
            ped_id= pedVO.getPed_id();    
            ped_fecha= pedVO.getPed_fecha();
            ped_direccion= pedVO.getPed_direccion();
            ped_cant_total= pedVO.getPed_cant_total();
            ped_valor= pedVO.getPed_valor();
            ped_hora= pedVO.getPed_hora();
            
           
            
            
        } catch (Exception e) {
            
        Logger.getLogger(PedidoDAO.class.getName()).log(Level.SEVERE, null,  e);
            
        }
    }
    


    @Override
    public boolean agregarRegistro() { 
        try {
  
            sql="insert into pedidos values(null, ?,?,?,?,?,?)";
            puente =conexion.prepareStatement(sql);
           
            //esto es por segurida, para que no inyecten datos 
            puente.setString(1,  ped_id);
            puente.setString(2,  ped_fecha);
            puente.setString(3,  ped_direccion);
            puente.setString(4,  ped_cant_total);
            puente.setString(5,  ped_valor);
            puente.setString(6,  ped_hora);
            puente.executeUpdate();
            operaciones = true;
    } catch ( SQLException e) {
               Logger.getLogger(PedidoDAO.class.getName()).log(Level.SEVERE, null, e );

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
  
            sql="update pedidos set  ped_fecha=?, ped_direccion=?, ped_cant_total=?,  ped_valor=?, ped_hora=? where ped_id=?";
            puente =conexion.prepareStatement(sql);
            
            //esto es por seguridad, para que no inyecten datos 
            
            puente.setString(1,  ped_fecha);
            puente.setString(2,  ped_direccion);
            puente.setString(3,  ped_cant_total);
            puente.setString(4,  ped_valor);
            puente.setString(5,  ped_hora);
            puente.setString(6,  ped_id);
            puente.executeUpdate();
            operaciones = true;
    } catch ( SQLException e) {
               Logger.getLogger(PedidoDAO.class.getName()).log(Level.SEVERE, null, e );

    }finally{
            try{
                this.cerrarConexion();
            } catch (SQLException e) {
                
            }
        }
        return operaciones;
      
    }
public ArrayList<PedidoVO> listar() 
    {    
        PedidoVO pedVO = null;
        conexion = this.obtenerConexion();
        ArrayList<PedidoVO>ListarPedido = new ArrayList<>();
        try {
            
            sql = "SELECT * FROM pedidos group by ped_id";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            
            while(mensajero.next()) 
            {
                    pedVO = new PedidoVO( mensajero.getString(1), mensajero.getString(2),
                    mensajero.getString(3), mensajero.getString(4), mensajero.getString(5), 
                    mensajero.getString(6));
            ListarPedido.add(pedVO);     
            }
            
        } catch (Exception e) {
             Logger.getLogger(PedidoDAO.class.getName()).log(Level.SEVERE, null, e );           
        }
        return ListarPedido;
    }
}
