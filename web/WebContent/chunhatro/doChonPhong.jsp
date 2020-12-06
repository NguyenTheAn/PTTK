<%-- 
    Document   : doChonPhong
    Created on : Dec 6, 2020, 11:23:37 PM
    Author     : ligirk
--%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,dao.*,model.*"%>

<%
    Integer idx = Integer.parseInt((String) request.getParameter("idx"));
    ArrayList<PhongTro> listPhongTro = (ArrayList<PhongTro>) session.getAttribute("kqtimkiemphong");
    PhongTro pt = listPhongTro.get(idx);
    String IdPhongTro = pt.getId();
    DoDungTrongPhongDAO daoddtp = new DoDungTrongPhongDAO();
    ArrayList<DoDungTrongPhong> ddtp = daoddtp.getByIdPhong(IdPhongTro);
    session.setAttribute("DoDungTrongPhong", ddtp);
    response.sendRedirect("gdChonDoDungTrongPhong.jsp");
%>
