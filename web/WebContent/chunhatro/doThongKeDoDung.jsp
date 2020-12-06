<%-- 
    Document   : doThongKeDoDung
    Created on : Dec 7, 2020, 12:03:48 AM
    Author     : ligirk
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Collections,java.util.Comparator,java.util.ArrayList,dao.*,model.*"%>

<%
    DoDungTrongPhongDAO daoddtp = new DoDungTrongPhongDAO();
    ArrayList<DoDungTrongPhong> listDDTP = daoddtp.Read();
    ThongKeDoDungDAO daoTK = new ThongKeDoDungDAO();
    ArrayList<ThongKeDoDung> listTK = daoTK.Read();
    for (DoDungTrongPhong ddtp : listDDTP){
        String tt = ddtp.getTrangThai();
        String IdDoDung = ddtp.getIdDoDung();
        int slddtp = Integer.parseInt(ddtp.getSoLuong());
        if (tt.equals("Hong hoc")){
            for (ThongKeDoDung i : listTK){
                if (IdDoDung.equals(i.getId())){
                    Integer sl = Integer.parseInt(i.getSoLuongPhaiThayThe());
                    sl+=slddtp;
                    i.setSoLuongPhaiThayThe(sl.toString());
                }
            }
        }
    }
    
    Comparator<ThongKeDoDung> compareBySLPTT = new Comparator<ThongKeDoDung>() {

	public int compare(ThongKeDoDung o1, ThongKeDoDung o2) {

	   //ascending order
	   return o2.getSoLuongPhaiThayThe().compareTo(o1.getSoLuongPhaiThayThe());

	   //descending order
	   //return StudentName2.compareTo(StudentName1);
    }};
             
    Collections.sort(listTK, compareBySLPTT);
    session.setAttribute("danhsachthongke", listTK);
    response.sendRedirect("gdThongKeDoDung.jsp");
%>
