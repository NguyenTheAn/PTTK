<%-- 
    Document   : gdNhapDoDung
    Created on : Dec 6, 2020, 1:19:14 PM
    Author     : ligirk
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Giao Dien Nhap Do Dung</title>
        <%@include file ="../header.jsp" %>
    </head>
    <body>
        <h2> Nhập Đồ Dùng </h2>
        <form name="nhapdodung" action="doNhapDoDung.jsp" method="post">
            <table border="0">
                <tr>
                    <td>Tên:</td>
                    <td><input type="text" name="name" id="name" required/></td>
                </tr>
                <tr>
                    <td>Đơn giá:</td>
                    <td><input type="text" name="price" id="price"
                        required /></td>
                </tr>
                <tr>
                    <td>Tổng số lượng:</td>
                    <td><input type="text" name="number" id="number"
                        required /></td>
                </tr>
                <tr>
                    <td>Mô tả:</td>
                    <td><input type="text" name="discription" id="discription"
                        /></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="Thêm" />
                        <button onclick="history.back()">Quay Lại</button>
                    </td>
                </tr>
            </table>
        </form>
        <%
           if(request.getParameter("err") !=null && request.getParameter("err").equalsIgnoreCase("success")){
               %> <h4>Lưu thành công!</h4><%
           }else if(request.getParameter("err") !=null && request.getParameter("err").equalsIgnoreCase("fail")){
               %> <h4 color="red">Lưu thất bại!</h4><%
           }
       %>
    </body>
</html>
