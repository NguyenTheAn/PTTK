<%-- 
    Document   : doTimKiemPhong
    Created on : Dec 6, 2020, 8:50:11 PM
    Author     : ligirk
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,dao.*,model.*"%>

<%
    String key = (String)request.getParameter("key");
    PhongTroDAO dao = new PhongTroDAO();
    ArrayList<PhongTro> list = dao.timKiem(key.toLowerCase());
    session.setAttribute("kqtimkiemphong", list);
    response.sendRedirect("gdChonPhong.jsp");
%>
