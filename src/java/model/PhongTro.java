/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author ligirk
 */
public class PhongTro {
    private String id;
    private String ten;
    private String giaPhong;
    private String tienDien;
    private String tienNuoc;
    private String moTa;

    public PhongTro() {
    }

    public PhongTro(String id, String ten, String giaPhong, String tienDien, String tienNuoc, String moTa) {
        this.id = id;
        this.ten = ten;
        this.giaPhong = giaPhong;
        this.tienDien = tienDien;
        this.tienNuoc = tienNuoc;
        this.moTa = moTa;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getGiaPhong() {
        return giaPhong;
    }

    public void setGiaPhong(String giaPhong) {
        this.giaPhong = giaPhong;
    }

    public String getTienDien() {
        return tienDien;
    }

    public void setTienDien(String tienDien) {
        this.tienDien = tienDien;
    }

    public String getTienNuoc() {
        return tienNuoc;
    }

    public void setTienNuoc(String tienNuoc) {
        this.tienNuoc = tienNuoc;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    
    
}
