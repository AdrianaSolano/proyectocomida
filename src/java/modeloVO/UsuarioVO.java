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
public class UsuarioVO {
    
    private String usu_id, usu_nombre, usu_apellido, usu_clave, usu_correo, usu_telefono, usu_direccion, f_rol_id; 
        
    public UsuarioVO() {
    
    }

    public UsuarioVO(String usu_id, String usu_nombre, String usu_apellido, String usu_clave, String usu_correo, String usu_telefono, String usu_direccion, String f_rol_id) {
        this.usu_id = usu_id;
        this.usu_nombre = usu_nombre;
        this.usu_apellido = usu_apellido;
        this.usu_clave = usu_clave;
        this.usu_correo = usu_correo;
        this.usu_telefono = usu_telefono;
        this.usu_direccion = usu_direccion;
        this.f_rol_id = f_rol_id;
    }

    

    public String getUsu_id() {
        return usu_id;
    }

    public void setUsu_id(String usu_id) {
        this.usu_id = usu_id;
    }

    public String getUsu_nombre() {
        return usu_nombre;
    }

    public void setUsu_nombre(String usu_nombre) {
        this.usu_nombre = usu_nombre;
    }
    
    public String getUsu_apellido() {
        return usu_apellido;
    }

    public void setUsu_apellido(String usu_apellido) {
        this.usu_apellido = usu_apellido;
    }

    public String getUsu_clave() {
        return usu_clave;
    }

    public void setUsu_clave(String usu_clave) {
        this.usu_clave = usu_clave;
    }

    public String getUsu_correo() {
        return usu_correo;
    }

    public void setUsu_correo(String usu_correo) {
        this.usu_correo = usu_correo;
    }

    public String getUsu_telefono() {
        return usu_telefono;
    }

    public void setUsu_telefono(String usu_telefono) {
        this.usu_telefono = usu_telefono;
    }

    public String getUsu_direccion() {
        return usu_direccion;
    }

    public void setUsu_direccion(String usu_direccion) {
        this.usu_direccion = usu_direccion;
    }

    public String getF_rol_id() {
        return f_rol_id;
    }

    public void setF_rol_id(String f_rol_id) {
        this.f_rol_id = f_rol_id;
    }

    
       

 
    
}