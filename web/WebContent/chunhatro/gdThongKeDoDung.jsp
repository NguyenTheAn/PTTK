<%-- 
    Document   : gdThongKeDoDung
    Created on : Dec 6, 2020, 11:59:31 PM
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
        ArrayList<ThongKeDoDung> listTK = (ArrayList<ThongKeDoDung>) session.getAttribute("danhsachthongke");
    %>
    <body>
        <h2> Thống kê đồ dùng </h2>
        <table style="border: 1px solid black;border-collapse: collapse;">
            <thead><td style="border: 1px solid black; padding:0 15px 0 15px;">T.T</td>
                <td style="border: 1px solid black; padding:0 15px 0 15px;">Mã đồ dùng</td>
                <td style="border: 1px solid black; padding:0 15px 0 15px;">Tên đồ dùng</td>
                <td style="border: 1px solid black; padding:0 15px 0 15px;">Số lượng phải thay thế</td>
                <td style="border: 1px solid black; padding:0 15px 0 15px;">Mô tả</td>
                <td style="border: 1px solid black; padding:0 15px 0 15px;">Chọn</td>
            </thead>
            <% 
            if(listTK != null)
            for(int i=0; i<listTK.size(); i++){
            %>
            <tr> 
            <td style="text-align:center; border: 1px solid black; padding:0 15px 0 15px;"><%=(i+1) %></td>
            <td style="text-align:center; border: 1px solid black; padding:0 15px 0 15px;"><%=listTK.get(i).getId() %></td>
            <td style="padding:0 15px 0 15px; border: 1px solid black;"><%=listTK.get(i).getName() %></td>
            <td style="text-align:center; padding:0 15px 0 15px; border: 1px solid black;"><%=listTK.get(i).getSoLuongPhaiThayThe()%></td>
            <td style="text-align:center; padding:0 15px 0 15px; border: 1px solid black;"><%=listTK.get(i).getMoTa()%></td>
            <td style="text-align:center; padding:0 15px 0 15px; border: 1px solid black;">
            <a href="gdChiTietThongKeDoDung.jsp?idx=<%=i%>">Chọn</a></td>
            </tr>
            <%} %>
        </table>
        <br/>
        <button type="button" name="back" onclick="history.back()">Quay lại</button>
    </body>
</html>
