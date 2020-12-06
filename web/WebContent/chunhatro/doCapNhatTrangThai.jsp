<%-- 
    Document   : doChonDoDungTrongPhong
    Created on : Dec 6, 2020, 11:36:17 PM
    Author     : ligirk
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,dao.*,model.*"%>

<%
    Integer idx = Integer.parseInt((String) request.getParameter("idx"));
    ArrayList<DoDungTrongPhong> listddtp = (ArrayList<DoDungTrongPhong>) session.getAttribute("DoDungTrongPhong");
    DoDungTrongPhong ddtp = listddtp.get(idx);
    ddtp.setTrangThai("Hong hoc");
    listddtp.set(idx, ddtp);
    DoDungTrongPhongDAO ddtpdao = new DoDungTrongPhongDAO();
    boolean kq = ddtpdao.Write(ddtp);
    
    if(kq){
        response.sendRedirect("gdChonDoDungTrongPhong.jsp?err=success");
    }else{
        response.sendRedirect("gdChonDoDungTrongPhong.jsp?err=fail");
    }
%>
