<%-- 
    Document   : gdChonPhong
    Created on : Dec 6, 2020, 11:15:41 PM
    Author     : ligirk
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,dao.*,model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chon Do Dung</title>
    </head>
    <%
        ArrayList<PhongTro> listPhongTro = (ArrayList<PhongTro>) session.getAttribute("kqtimkiemphong");
    %>
    <body>
        <h2> Chọn phòng trọ </h2>
        <table style="border: 1px solid black;border-collapse: collapse;">
            <thead><td style="border: 1px solid black; padding:0 15px 0 15px;">T.T</td>
                <td style="border: 1px solid black; padding:0 15px 0 15px;">Mã phòng trọ</td>
                <td style="border: 1px solid black; padding:0 15px 0 15px;">Tên phòng trọ</td>
                <td style="border: 1px solid black; padding:0 15px 0 15px;">Giá phòng</td>
                <td style="border: 1px solid black; padding:0 15px 0 15px;">Mô tả</td>
                <td style="border: 1px solid black; padding:0 15px 0 15px;">Chọn</td>
            </thead>
            <% 
            if(listPhongTro != null)
            for(int i=0; i<listPhongTro.size(); i++){
            %>
            <tr> 
            <td style="text-align:center; border: 1px solid black; padding:0 15px 0 15px;"><%=(i+1) %></td>
            <td style="text-align:center; border: 1px solid black; padding:0 15px 0 15px;"><%=listPhongTro.get(i).getId() %></td>
            <td style="padding:0 15px 0 15px; border: 1px solid black;"><%=listPhongTro.get(i).getTen()%></td>
            <td style="text-align:center; padding:0 15px 0 15px; border: 1px solid black;"><%=listPhongTro.get(i).getGiaPhong()%></td>
            <td style="text-align:center; padding:0 15px 0 15px; border: 1px solid black;"><%=listPhongTro.get(i).getMoTa()%></td>
            <td style="text-align:center; padding:0 15px 0 15px; border: 1px solid black;">
            <a href="doChonPhong.jsp?idx=<%=i%>">Chọn</a></td>
            </tr>
            <%} %>
        </table>
        <br/>
        <button type="button" name="back" onclick="history.back()">Quay lại</button>
    </body>
</html>
