/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author ligirk
 */
public class DoDung {
    private String id;
    private String name;
    private String donGia;
    private String tongSoLuong;
    private String moTa;

    public DoDung() {
    }

    public DoDung(String name, String donGia, String tongSoLuong, String moTa) {
        this.name = name;
        this.donGia = donGia;
        this.tongSoLuong = tongSoLuong;
        this.moTa = moTa;
    }

    @Override
    public String toString() {
        return "DoDung{" + "id=" + id + ", name=" + name + ", donGia=" + donGia + ", tongSoLuong=" + tongSoLuong + ", moTa=" + moTa + '}';
    }

    public DoDung(String id, String name, String donGia, String tongSoLuong, String moTa) {
        this.id = id;
        this.name = name;
        this.donGia = donGia;
        this.tongSoLuong = tongSoLuong;
        this.moTa = moTa;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDonGia() {
        return donGia;
    }

    public void setDonGia(String donGia) {
        this.donGia = donGia;
    }

    public String getTongSoLuong() {
        return tongSoLuong;
    }

    public void setTongSoLuong(String tongSoLuong) {
        this.tongSoLuong = tongSoLuong;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }
    
}
