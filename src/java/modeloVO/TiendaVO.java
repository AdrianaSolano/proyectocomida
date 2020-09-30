/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloVO;

/**
 *
 * @author user
 */
public class TiendaVO {
    
    private String tie_id, tie_nombre, tie_direccion, tie_telefono, tie_horario_apertura, tie_horario_cierre, f_bar_id;

    
    public TiendaVO() {  
    }
    
    
    public TiendaVO(String tie_id, String tie_nombre, String tie_direccion, String tie_telefono, String tie_horario_apertura, String tie_horario_cierre, String f_bar_id) {
        this.tie_id = tie_id;
        this.tie_nombre = tie_nombre;
        this.tie_direccion = tie_direccion;
        this.tie_telefono = tie_telefono;
        this.tie_horario_apertura = tie_horario_apertura;
        this.tie_horario_cierre = tie_horario_cierre;
        this.f_bar_id = f_bar_id;
    }
    
    

    public String getTie_id() {
        return tie_id;
    }

    public void setTie_id(String tie_id) {
        this.tie_id = tie_id;
    }

    public String getTie_nombre() {
        return tie_nombre;
    }

    public void setTie_nombre(String tie_nombre) {
        this.tie_nombre = tie_nombre;
    }

    public String getTie_direccion() {
        return tie_direccion;
    }

    public void setTie_direccion(String tie_direccion) {
        this.tie_direccion = tie_direccion;
    }

    public String getTie_telefono() {
        return tie_telefono;
    }

    public void setTie_telefono(String tie_telefono) {
        this.tie_telefono = tie_telefono;
    }

    public String getTie_horario_apertura() {
        return tie_horario_apertura;
    }

    public void setTie_horario_apertura(String tie_horario_apertura) {
        this.tie_horario_apertura = tie_horario_apertura;
    }

    public String getTie_horario_cierre() {
        return tie_horario_cierre;
    }

    public void setTie_horario_cierre(String tie_horario_cierre) {
        this.tie_horario_cierre = tie_horario_cierre;
    }

    public String getF_bar_id() {
        return f_bar_id;
    }

    public void setF_bar_id(String f_bar_id) {
        this.f_bar_id = f_bar_id;
    }
    

}
    