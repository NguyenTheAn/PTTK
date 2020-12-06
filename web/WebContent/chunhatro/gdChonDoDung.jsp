<%-- 
    Document   : gdChonDoDung
    Created on : Dec 6, 2020, 3:27:46 PM
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
        ArrayList<DoDung> listDoDung = (ArrayList<DoDung>) session.getAttribute("kqtimkiem");
    %>
    <body>
        <h2> Chọn đồ dùng </h2>
        <table style="border: 1px solid black;border-collapse: collapse;">
            <thead><td style="border: 1px solid black; padding:0 15px 0 15px;">T.T</td>
                <td style="border: 1px solid black; padding:0 15px 0 15px;">Mã đồ dùng</td>
                <td style="border: 1px solid black; padding:0 15px 0 15px;">Tên đồ dùng</td>
                <td style="border: 1px solid black; padding:0 15px 0 15px;">Đơn giá</td>
                <td style="border: 1px solid black; padding:0 15px 0 15px;">Số lượng đồ dùng</td>
                <td style="border: 1px solid black; padding:0 15px 0 15px;">Mô tả</td>
                <td style="border: 1px solid black; padding:0 15px 0 15px;">Chọn</td>
            </thead>
            <% 
            if(listDoDung != null)
            for(int i=0; i<listDoDung.size(); i++){
            %>
            <tr> 
            <td style="text-align:center; border: 1px solid black; padding:0 15px 0 15px;"><%=(i+1) %></td>
            <td style="text-align:center; border: 1px solid black; padding:0 15px 0 15px;"><%=listDoDung.get(i).getId() %></td>
            <td style="padding:0 15px 0 15px; border: 1px solid black;"><%=listDoDung.get(i).getName() %></td>
            <td style="text-align:center; padding:0 15px 0 15px; border: 1px solid black;"><%=listDoDung.get(i).getDonGia()%></td>
            <td style="text-align:center; padding:0 15px 0 15px; border: 1px solid black;"><%=listDoDung.get(i).getTongSoLuong()%></td>
            <td style="text-align:center; padding:0 15px 0 15px; border: 1px solid black;"><%=listDoDung.get(i).getMoTa()%></td>
            <td style="text-align:center; padding:0 15px 0 15px; border: 1px solid black;">
            <a href="gdChinhSuaDoDung.jsp?iddd=<%=i%>">Chọn</a></td>
            </tr>
            <%} %>
        </table>
        <br/>
        <button type="button" name="back" onclick="history.back()">Quay lại</button>
    </body>
</html>
