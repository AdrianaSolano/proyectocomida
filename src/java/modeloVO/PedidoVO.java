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
public class ProductoVO {
    
    private String pro_id, pro_nombre, pro_precio, pro_descripcion, pro_f_tie_id, pro_f_tipo_pro_id;
  
    
    public ProductoVO() {
    
    }
    
    public ProductoVO(String pro_id, String pro_nombre, String pro_precio, String pro_descripcion, String pro_f_tie_id, String pro_f_tipo_pro_id) {
        this.pro_id = pro_id;
        this.pro_nombre = pro_nombre;
        this.pro_precio = pro_precio;
        this.pro_descripcion = pro_descripcion;
        this.pro_f_tie_id = pro_f_tie_id;
        this.pro_f_tipo_pro_id = pro_f_tipo_pro_id;
    }
    
    public String getPro_id() {
        return pro_id;
    }

    public void setPro_id(String pro_id) {
        this.pro_id = pro_id;
    }

    public String getPro_nombre() {
        return pro_nombre;
    }

    public void setPro_nombre(String pro_nombre) {
        this.pro_nombre = pro_nombre;
    }

    public String getPro_precio() {
        return pro_precio;
    }

    public void setPro_precio(String pro_precio) {
        this.pro_precio = pro_precio;
    }

    public String getPro_descripcion() {
        return pro_descripcion;
    }

    public void setPro_descripcion(String pro_descripcion) {
        this.pro_descripcion = pro_descripcion;
    }

    public String getPro_f_tie_id() {
        return pro_f_tie_id;
    }

    public void setPro_f_tie_id(String pro_f_tie_id) {
        this.pro_f_tie_id = pro_f_tie_id;
    }

    public String getPro_f_tipo_pro_id() {
        return pro_f_tipo_pro_id;
    }

    public void setPro_f_tipo_pro_id(String pro_f_tipo_pro_id) {
        this.pro_f_tipo_pro_id = pro_f_tipo_pro_id;
    }


        
}


