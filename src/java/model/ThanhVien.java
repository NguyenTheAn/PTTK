/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Date;
import java.util.Objects;

/**
 *
 * @author ligirk
 */
public class ThanhVien {
    private Integer id;
    private String TenDangNhap;
    private String MatKhau;
    private String GioiTinh;
    private String SDT;
    private String ghiChu;
    private String HoTen;
    private String DiaChi;
    private String NgaySinh;

    public ThanhVien() {
    }

    public ThanhVien(Integer id, String TenDangNhap, String MatKhau, String GioiTinh, String SDT, String ghiChu, String HoTen, String DiaChi, String NgaySinh) {
        this.id = id;
        this.TenDangNhap = TenDangNhap;
        this.MatKhau = MatKhau;
        this.GioiTinh = GioiTinh;
        this.SDT = SDT;
        this.ghiChu = ghiChu;
        this.HoTen = HoTen;
        this.DiaChi = DiaChi;
        this.NgaySinh = NgaySinh;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final ThanhVien other = (ThanhVien) obj;
        if (!Objects.equals(this.TenDangNhap, other.TenDangNhap)) {
            return false;
        }
        if (!Objects.equals(this.MatKhau, other.MatKhau)) {
            return false;
        }
        return true;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTenDangNhap() {
        return TenDangNhap;
    }

    public void setTenDangNhap(String TenDangNhap) {
        this.TenDangNhap = TenDangNhap;
    }

    public String getMatKhau() {
        return MatKhau;
    }

    public void setMatKhau(String MatKhau) {
        this.MatKhau = MatKhau;
    }

    public String getGioiTinh() {
        return GioiTinh;
    }

    public void setGioiTinh(String GioiTinh) {
        this.GioiTinh = GioiTinh;
    }

    public String getSDT() {
        return SDT;
    }

    public void setSDT(String SDT) {
        this.SDT = SDT;
    }

    public String getGhiChu() {
        return ghiChu;
    }

    public void setGhiChu(String ghiChu) {
        this.ghiChu = ghiChu;
    }

    public String getHoTen() {
        return HoTen;
    }

    public void setHoTen(String HoTen) {
        this.HoTen = HoTen;
    }

    public String getDiaChi() {
        return DiaChi;
    }

    public void setDiaChi(String DiaChi) {
        this.DiaChi = DiaChi;
    }

    public String getNgaySinh() {
        return NgaySinh;
    }

    public void setNgaySinh(String NgaySinh) {
        this.NgaySinh = NgaySinh;
    }
    
}
