<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
    /* Style for the table */
    table {
        width: 75%;
        border-collapse: collapse;
        margin: 20px 0;
        font-size: 1em;
        font-family: sans-serif;
        min-width: 400px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
    }

    th,
    td {
        padding: 12px 15px;
        text-align: center;
    }

    th {
        background-color: #343a40;
        color: #fff;
        text-transform: uppercase;
        letter-spacing: 0.03em;
    }

    tr:nth-child(even) {
        background-color: #f5f5f5;
    }
</style>

<body>
    <%@ page import="java.sql.*" %>
    <%
        String user = request.getParameter("t1");
        String pass = request.getParameter("t2");
      //  session.setAttribute("username", user );
      //  session.setAttribute("password", pass );

    
        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        }
        catch (ClassNotFoundException e) {
            e.printStackTrace();
            }
    %>
   <center><table border="1px">
    <tr><th> Roll NO</th><th>Block No</th><th>Room No</th><th>Seat No</th></tr>


    <%  try{

     
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmr", "root", "123456");
            String query = "SELECT * FROM allotment order by id";
            stmt = con.prepareStatement(query);
            rs = stmt.executeQuery();
             
               
               while(rs.next()){
                %>
                <tr>
                <td><%= rs.getString(1) %></td>
                <td><%= rs.getString(2) %></td>
                <td><%=rs.getInt(3) %></td>
                <td><%=rs.getInt(4) %></td>
            </tr>
            <%
         }
               
         }catch (Exception e) {
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
</table>  
</body>

</html>