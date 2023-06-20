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
        String roll = request.getParameter("t1");
        String block = request.getParameter("t2");
        int room = Integer.parseInt(request.getParameter("t3"));
 
    int seat = Integer.parseInt(request.getParameter("t4"));
    
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmr", "root", "123456");
        String qry = "insert into allotment values(?,?,?,?)";
        pstmt = con.prepareStatement(qry);
        pstmt.setString(1, roll);
        pstmt.setString(2, block);
        pstmt.setInt(3, room);
        pstmt.setInt(4, seat);
        int i = pstmt.executeUpdate();
        out.println(i + " records inserted");
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