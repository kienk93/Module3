<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DanhSachKhachHang</title>
    <style>
        div{
            border: 5px solid gray;
            width: 1000px;
            padding: 20px;
        }
        th{

            height: 50px;
            width: 200px;
        }
        table{
            border-collapse: collapse;
            text-align: left;
            width: 100%;
        }
        td{
            height: 50px;
            width: 300px;
        }
        img {
            display: block;
            max-width:200px;
            max-height:50px;
            width: auto;
            height: auto;
        }
    </style>
</head>
<body>
<%! public class KhachHang {
    private String ten;
    private String ngaySinh;
    private String diaChi;
    private String photo;

    public KhachHang() {
    }

    public KhachHang(String ten, String ngaySinh, String diaChi, String photo) {
        this.ten = ten;
        this.ngaySinh = ngaySinh;
        this.diaChi = diaChi;
        this.photo = photo;
    }

    public String getPhoto() {
        return photo;
    }



    public String getTen() {
        return ten;
    }


    public String getNgaySinh() {
        return ngaySinh;
    }


    public String getDiaChi() {
        return diaChi;
    }

}
%>
<%
    List<KhachHang> khachHangs = new ArrayList<>();
%>

<%
    KhachHang khachHang = new KhachHang("A", "2077-08-31", "Hà Nội", "https://photographer.com.vn/wp-content/uploads/2021/05/Anh-anime-cap-doi-dep-cute-cuc-chat-phai-xem.jpg");
    khachHangs.add(khachHang);
    KhachHang khachHang1 = new KhachHang("B", "1999-01-11", "Bắc Giang", "https://photographer.com.vn/wp-content/uploads/2021/05/Mot-van-hinh-anh-con-gai-cute-de-thuong-nhin.jpg");
    khachHangs.add(khachHang1);
    KhachHang khachHang2 = new KhachHang("abc","1900-12-13", "HCM","https://photographer.com.vn/wp-content/uploads/2021/05/Mot-van-hinh-anh-con-gai-cute-de-thuong-nhin.png");
    khachHangs.add(khachHang2);
    KhachHang khachHang3 = new KhachHang("L","1992-11-01","Bắc Giang","https://photographer.com.vn/wp-content/uploads/2021/05/1620312097_704_Anh-anime-cap-doi-dep-cute-cuc-chat-phai-xem.png");
    khachHangs.add(khachHang3);
%>
<div>
    <h1>Danh Sách Khách Hàng</h1>
    <table border="1px">
        <tr>
            <th>Tên</th>
            <th>Ngày Sinh</th>
            <th>Địa chỉ</th>
            <th>Ảnh</th>
        </tr>

<%
            for (KhachHang customer: khachHangs) {
                out.println("<tr>");
                out.println("<td>"+customer.getTen()+"</td>");
                out.println("<td>"+customer.getNgaySinh()+"</td>");
                out.println("<td>"+customer.getDiaChi()+"</td>");
                out.println("<td><img src="+customer.getPhoto()+"></td>");
                out.println("/<tr>");
            }
        %>
        <%--Cách thủ công--%>

<%--        <tr>--%>
<%--            <td><%= khachHangs.get(0).getTen()%></td>--%>
<%--            <td><%= khachHangs.get(0).getNgaySinh()%></td>--%>
<%--            <td><%= khachHangs.get(0).getDiaChi()%></td>--%>
<%--            <td><img src="<%=khachHangs.get(0).getPhoto() %> " alt="img"></td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td><%= khachHangs.get(1).getTen()%></td>--%>
<%--            <td><%= khachHangs.get(1).getNgaySinh()%></td>--%>
<%--            <td><%= khachHangs.get(1).getDiaChi()%></td>--%>
<%--            <td><img src="<%=khachHangs.get(1).getPhoto() %>" alt="img"></td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td><%= khachHangs.get(2).getTen()%></td>--%>
<%--            <td><%= khachHangs.get(2).getNgaySinh()%></td>--%>
<%--            <td><%= khachHangs.get(2).getDiaChi()%></td>--%>
<%--            <td><img src="<%= khachHangs.get(2).getPhoto()%>" alt="img"></td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td><%= khachHangs.get(3).getTen()%></td>--%>
<%--            <td><%= khachHangs.get(3).getNgaySinh()%></td>--%>
<%--            <td><%= khachHangs.get(3).getDiaChi()%></td>--%>
<%--            <td><img src="<%= khachHangs.get(3).getPhoto()%>" alt="img"></td>--%>
<%--        </tr>--%>

    </table>
</div>
</body>
</html>
