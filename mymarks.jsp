<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        /* Style for the table */
        
    .main{
        margin-top: 2%;
    }

        table {
            width: 75%;
            border-collapse: collapse;
            margin: 20px 0;
            font-size: 1em;
            font-family: sans-serif;
            min-width: 400px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
        }
        .container{
           width: 30%;
           margin-left:12.4%;
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
</head>

<body>
    <%@ page import="java.sql.*" %>
    <%
      
        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try { String user= (String) session.getAttribute("users");
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmr", "root", "123456");
            String query = "SELECT * FROM marks WHERE id=?";
            stmt = con.prepareStatement(query);
            stmt.setString(1, user);
            rs = stmt.executeQuery();
            if (rs.next()) {
                String s=rs.getString(1);
                int a=rs.getInt(2);
                int b=rs.getInt(3);
                int c=rs.getInt(4);
                int d=rs.getInt(5);
                int e=rs.getInt(6);
                int total=a+b+c+d+e;
                int per=(total*100)/125;

    %> 
    
    <div class="main">
       <center><h3> Welcome <%=session.getAttribute("username") %>, Your Mark Details Are Attached Below</h3>
        <center>
            <table border="1px">
                <tr>
                    <th>Roll NO</th>
                    <th>Scripting Languages</th>
                    <th>Web Technologies</th>
                    <th>Compiler Design</th>
                 <th>PE-II</th>
                    <th>AC/Honor-I/Minor</th>
                </tr>
                <tr>
                    <td><%= s %></td>
                    <td><%= a %></td>
                    <td><%= b %></td>
                    <td><%= c %></td>
                    <td><%= d %></td>
                    <td><%= e%></td>
                </tr>
            </table>
        </center>
    </div>
                
                <div class="container">
                    <table>
                        <tr>
                          <th>Total</th>
                          <th>Percentage</th>
                      </tr>
                      <tr>
                          <td><%= total %></td>
                          <td><%= per %></td>
                      </tr>
                        
                      </table>
                </div>
                
    <%
            }else {
    %>
                <p>No data found for user <%= user %>.</p>
    <%
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
    
</table>  
</body>

</html>