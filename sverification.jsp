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
        String user = request.getParameter("t1");
        String pass = request.getParameter("t2");
        session.setAttribute("users", user );

        session.setAttribute("password", pass );

    
        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmr", "root", "123456");
            String query = "SELECT Name FROM studentdetails WHERE id = ? AND password = ?";
            stmt = con.prepareStatement(query);
            stmt.setString(1, user);
            stmt.setString(2, pass);
            rs = stmt.executeQuery();
            if (rs.next()) { session.setAttribute("username", rs.getString(1) );
                // valid credentials, redirect to success page
                response.sendRedirect("ssuccess.jsp");
            } else { 
                // invalid credentials, redirect back to login page with error message
                response.sendRedirect("login.jsp?error=1");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    %>
     
</body>
</html>