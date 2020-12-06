<%-- 
    Document   : gdXemThongKe
    Created on : Dec 6, 2020, 11:54:17 PM
    Author     : ligirk
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Giao Xem Thong Ke</title>
        <%@include file ="../header.jsp" %>
    </head>
    <body>
        <h2> Chon Loai Thong Ke </h2>
        <button onclick="openPage('doThongKeDoDung.jsp')">Thống kê đồ dùng theo số lượng phải thay thế</button>
        <br>
        <button onclick="history.back()">Quay Lại</button>

    </body>
</html>