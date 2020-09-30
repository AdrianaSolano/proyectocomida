/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author user
 */
public class Conexion {
    public String driver, user, password, bd, urlBd;
    public Connection conexion; 
    
    public Conexion() {
        driver="com.mysql.jdbc.Driver";
        user="root";
        password="";
        bd="comidaalinstante";
        urlBd="jdbc:mysql://localhost:3306/" + bd;
        
        try {
            
            Class.forName(driver).newInstance();
            conexion = DriverManager.getConnection(urlBd,user,password);
     System.out.println("conexion ok ");
     
     
        } catch ( Exception e) {
                 System.out.println("error de conexion BD " + e.toString());
        } 
    
}
    public Connection obtenerConexion(){
        return conexion;
        
    }

public  Connection cerrarConexion() throws SQLException  {

conexion.close();
conexion = null;
return conexion;
}

public static void main(String[ ]  args) {
    

new Conexion ();
}

}