/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;

/**
 *
 * @author ligirk
 */
public class DoDungTrongPhong{
    private String id;
    private String IdDoDung;
    private String trangThai;
    private String soLuong;
    private String IdPhongTro;

    public DoDungTrongPhong() {
    }

    public DoDungTrongPhong(String id, String IdDoDung, String trangThai, String soLuong, String IdPhongTro) {
        this.id = id;
        this.IdDoDung = IdDoDung;
        this.trangThai = trangThai;
        this.soLuong = soLuong;
        this.IdPhongTro = IdPhongTro;
    }

    public String getIdPhongTro() {
        return IdPhongTro;
    }

    public void setIdPhongTro(String IdPhongTro) {
        this.IdPhongTro = IdPhongTro;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getIdDoDung() {
        return IdDoDung;
    }

    public void setIdDoDung(String IdDoDung) {
        this.IdDoDung = IdDoDung;
    }

    public String getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(String trangThai) {
        this.trangThai = trangThai;
    }

    public String getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(String soLuong) {
        this.soLuong = soLuong;
    }

    
}
