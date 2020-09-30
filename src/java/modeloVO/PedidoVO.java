/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloVO;

/**
 *
 * @author Juliana
 */
public class PedidoVO {
    private String ped_id,ped_fecha,ped_direccion,ped_cant_total, ped_valor, ped_hora;

    public PedidoVO(String ped_id, String ped_fecha, String ped_direccion, String ped_cant_total, String ped_valor, String ped_hora) {
        this.ped_id = ped_id;
        this.ped_fecha = ped_fecha;
        this.ped_direccion = ped_direccion;
        this.ped_cant_total = ped_cant_total;
        this.ped_valor = ped_valor;
        this.ped_hora = ped_hora;
    }

    public String getPed_id() {
        return ped_id;
    }

    public void setPed_id(String ped_id) {
        this.ped_id = ped_id;
    }

    public String getPed_fecha() {
        return ped_fecha;
    }

    public void setPed_fecha(String ped_fecha) {
        this.ped_fecha = ped_fecha;
    }

    public String getPed_direccion() {
        return ped_direccion;
    }

    public void setPed_direccion(String ped_direccion) {
        this.ped_direccion = ped_direccion;
    }

    public String getPed_cant_total() {
        return ped_cant_total;
    }

    public void setPed_cant_total(String ped_cant_total) {
        this.ped_cant_total = ped_cant_total;
    }

    public String getPed_valor() {
        return ped_valor;
    }

    public void setPed_valor(String ped_valor) {
        this.ped_valor = ped_valor;
    }

    public String getPed_hora() {
        return ped_hora;
    }

    public void setPed_hora(String ped_hora) {
        this.ped_hora = ped_hora;
    }

       
}
