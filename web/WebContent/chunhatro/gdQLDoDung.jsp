<%-- 
    Document   : gdChinhChuNhaTro
    Created on : Dec 5, 2020, 2:19:05 PM
    Author     : ligirk
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Giao Dien QL Do Dung</title>
        <%@include file ="../header.jsp" %>
    </head>
    <body>
        <h2> Quan Ly Do Dung </h2>
        <button onclick="openPage('gdNhapDoDung.jsp')">Thêm</button>
        <br>
        <button onclick="openPage('gdTimKiemDoDung.jsp?job=modify')">Sửa</button>
        <br>
        <button onclick="openPage('gdTimKiemDoDung.jsp?job=delete')">Xóa</button>
        <br>
        <button onclick="history.back()">Quay Lại</button>


    </body>
</html>
