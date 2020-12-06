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
public class ThongKeDoDung extends DoDung{
    private String SoLuongPhaiThayThe;

    public String getSoLuongPhaiThayThe() {
        return SoLuongPhaiThayThe;
    }

    public void setSoLuongPhaiThayThe(String SoLuongPhaiThayThe) {
        this.SoLuongPhaiThayThe = SoLuongPhaiThayThe;
    }
    public ThongKeDoDung(DoDung dd, String SoLuongPhaiThayThe){
        super(dd.getId(), dd.getName(), dd.getDonGia(), dd.getTongSoLuong(), dd.getMoTa());
        this.SoLuongPhaiThayThe = SoLuongPhaiThayThe;
    }
}
