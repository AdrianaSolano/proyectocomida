/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloVO;

/**
 *
 * @author adria
 */
public class EmpleadoVO {
    
       private String nombre_usu, apellido_usu, contraseña_usu, rol_usu;

    public EmpleadoVO(String nombre_usu, String apellido_usu, String contraseña_usu, String rol_usu) {
        this.nombre_usu = nombre_usu;
        this.apellido_usu = apellido_usu;
        this.contraseña_usu = contraseña_usu;
        this.rol_usu = rol_usu;
    }

    public EmpleadoVO(String nombre_emp, String apellido_emp, String correo_emp, int telefono_emp, String direccion_emp) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String getNombre_usu() {
        return nombre_usu;
    }

    public void setNombre_usu(String nombre_usu) {
        this.nombre_usu = nombre_usu;
    }

    public String getApellido_usu() {
        return apellido_usu;
    }

    public void setApellido_usu(String apellido_usu) {
        this.apellido_usu = apellido_usu;
    }

    public String getContraseña_usu() {
        return contraseña_usu;
    }

    public void setContraseña_usu(String contraseña_usu) {
        this.contraseña_usu = contraseña_usu;
    }

    public String getRol_usu() {
        return rol_usu;
    }

    public void setRol_usu(String rol_usu) {
        this.rol_usu = rol_usu;
    }

    

  


 
    
}