<%-- 
    Document   : gdChiTietThongKeDoDung
    Created on : Dec 7, 2020, 2:37:52 AM
    Author     : ligirk
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Giao Diện Chi Tiết Thống Kê Đồ Dùng</title>
        <%@include file ="../header.jsp" %>
    </head>
    <%
        Integer idx = Integer.parseInt((String) request.getParameter("idx"));
        ArrayList<ThongKeDoDung> listTK = (ArrayList<ThongKeDoDung>) session.getAttribute("danhsachthongke");
        ThongKeDoDung tkdd = listTK.get(idx);
    %>
    <body>
        <h2> Chi Tiết Đồ Dùng </h2>
        <table border="0">
            <tr>
                <td>ID: </td>
                <td><input type="text" name="ID" id="ID" required readonly="readonly" value="<%=tkdd.getId()%>"/></td>
            </tr>
            <tr>
                <td>Tên:</td>
                <td><input type="text" name="name" id="name" required readonly="readonly" value="<%=tkdd.getName()%>"/></td>
            </tr>
            <tr>
                <td>Tổng số lượng:</td>
                <td><input type="text" name="number" id="number"
                    required readonly="readonly" value="<%=tkdd.getSoLuongPhaiThayThe()%>" /></td>
            </tr>
            <tr>
                <td>Mô tả:</td>
                <td><input type="text" name="discription" id="discription"
                           readonly="readonly" value="<%=tkdd.getMoTa()%>" /></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <button onclick="openPage('gdChinhChuNhaTro.jsp')">Xong</button>
                    <button onclick="history.back()">Quay Lại</button>
                </td>
            </tr>
        </table>
    </body>
</html>
