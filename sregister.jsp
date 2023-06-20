<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <%@ page import="java.sql.*" %>
    <%
    Connection con=null;
    PreparedStatement pstmt=null;
    try {       
        String user = request.getParameter("t1");
        String pass = request.getParameter("t2");
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmr", "root", "123456");
        String qry = "insert into studentdetails values(?,?,null,null)";
        pstmt = con.prepareStatement(qry);
        pstmt.setString(1, user);
        pstmt.setString(2, pass);
        int i = pstmt.executeUpdate();
      
        response.sendRedirect("slogin.jsp");
       
    }
    catch (Exception e) {
        e.printStackTrace();
    }
    finally {
        if (pstmt != null) {
            pstmt.close();
        }
        if (con != null) {
            con.close();
        }
    }
    %>
    
            
</body>
</html>