<%-- 
    Document   : gdChonDoDungTrongPhong
    Created on : Dec 6, 2020, 11:29:21 PM
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
        ArrayList<DoDungTrongPhong> listddtp = (ArrayList<DoDungTrongPhong>) session.getAttribute("DoDungTrongPhong");
    %>
    <body>
        <h2> Chọn đồ dùng trong phòng </h2>
        <table style="border: 1px solid black;border-collapse: collapse;">
            <thead><td style="border: 1px solid black; padding:0 15px 0 15px;">T.T</td>
                <td style="border: 1px solid black; padding:0 15px 0 15px;">Mã đồ dùng</td>
                <td style="border: 1px solid black; padding:0 15px 0 15px;">Tên đồ dùng</td>
                <td style="border: 1px solid black; padding:0 15px 0 15px;">Trạng thái</td>
                <td style="border: 1px solid black; padding:0 15px 0 15px;">Số lượng</td>
                <td style="border: 1px solid black; padding:0 15px 0 15px;">Chọn</td>
            </thead>
            <% 
            if(listddtp != null)
                for(int i=0; i<listddtp.size(); i++){
                    DoDungTrongPhong ddtp = listddtp.get(i);
                    DoDungDAO dddao = new DoDungDAO();
                    DoDung dd = dddao.getDoDungById(ddtp.getIdDoDung());
                    %>
                    <tr> 
                    <td style="text-align:center; border: 1px solid black; padding:0 15px 0 15px;"><%=(i+1) %></td>
                    <td style="text-align:center; border: 1px solid black; padding:0 15px 0 15px;"><%=ddtp.getId() %></td>
                    <td style="padding:0 15px 0 15px; border: 1px solid black;"><%=dd.getName()%></td>
                    <td style="text-align:center; padding:0 15px 0 15px; border: 1px solid black;"><%=ddtp.getTrangThai()%></td>
                    <td style="text-align:center; padding:0 15px 0 15px; border: 1px solid black;"><%=ddtp.getSoLuong()%></td>
                    <td style="text-align:center; padding:0 15px 0 15px; border: 1px solid black;">
                    <a href="doCapNhatTrangThai.jsp?idx=<%=i%>">Chọn</a></td>
                    </tr>
                <%} %>
        </table>
        <br/>
        <button type="button" name="back" onclick="history.back()">Quay lại</button>
        <%
           if(request.getParameter("err") !=null && request.getParameter("err").equalsIgnoreCase("success")){
                %> <h4>Chỉnh sửa thành công!</h4><%
            }else if(request.getParameter("err") !=null && request.getParameter("err").equalsIgnoreCase("fail")){
                %> <h4 color="red">Lỗi chỉnh sửa, liên hệ với admin để biết thêm thông tin!</h4><%
            }
       %>
    </body>
</html>
