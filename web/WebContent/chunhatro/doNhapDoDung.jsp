<%-- 
    Document   : doNhapDoDung
    Created on : Dec 6, 2020, 1:25:39 PM
    Author     : ligirk
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,dao.*,model.*"%>

<%
    String name = (String)request.getParameter("name");
    String price = (String)request.getParameter("price");
    String number = (String)request.getParameter("number");
    String discription = (String)request.getParameter("discription");
    DoDung dd = new DoDung(name, price, number, discription);
    DoDungDAO dao = new DoDungDAO();
    boolean kq = dao.SaveDoDung(dd);

    if(kq){
        response.sendRedirect("gdNhapDoDung.jsp?err=success");
    }else{
        response.sendRedirect("gdDangNhap.jsp?err=fail");
    }
    
%>
