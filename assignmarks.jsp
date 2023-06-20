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
        int sl = Integer.parseInt(request.getParameter("t3"));
        int wt=Integer.parseInt(request.getParameter("t3"));
    int cd = Integer.parseInt(request.getParameter("t4"));
    int ac = Integer.parseInt(request.getParameter("t5"));
    int pe = Integer.parseInt(request.getParameter("t6"));

    
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmr", "root", "123456");
        String qry = "insert into marks values(?,?,?,?,?,?)";
        pstmt = con.prepareStatement(qry);
        pstmt.setString(1, roll);
        pstmt.setInt(2,sl);
        pstmt.setInt(3,wt);
        pstmt.setInt(4,cd);
        pstmt.setInt(5,pe);
        pstmt.setInt(6,ac);
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