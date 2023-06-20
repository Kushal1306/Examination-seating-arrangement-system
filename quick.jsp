<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        /* Style for the table */
        table {
            width: 60%;
            border-collapse: collapse;
            margin:;
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
</head>
<body>
    <%@ page import="java.sql.*" %>
<%
Connection conn = null;
try {
    // Establish a connection to the MySQL database
    Connection con=null;
    Class.forName("com.mysql.cj.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmr", "root", "123456");
    // Create an array to store the seat numbers
    String[] seats = new String[1200]; // 50 rooms * 24 seats per room = 1200 seats

    // Generate unique seat numbers for each student
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT id FROM studentdetails order by id");
    int seatNumber = 1;
    while (rs.next()) {
        String rollNumber = rs.getString(1);
        seats[seatNumber - 1] = rollNumber;
        seatNumber++;
    }
    int s=0;
/// Assuming eaxh room can acomodate maximum of 5 students.. replace seatinrroom count to increse no of seats
 
    // Display the allotted seats room-wise
    out.println("<center><table>");
        out.println("<tr><th>Roll No</th><th>Room No</th><th>Seat No</th></tr>");
    for (int roomNumber = 1; roomNumber <= 50; roomNumber++) {
                for (int seatInRoom = 1; seatInRoom <= 5; seatInRoom++) {
           
            int seatIndex = (roomNumber - 1) * 5 + seatInRoom - 1;
            String rollNumber = seats[seatIndex];
            if (rollNumber != null)
             {
                out.println("<tr><td>" + rollNumber + "</td><td>"+roomNumber+"</td><td>Seat " + seatInRoom + "</td></tr>");
                s=s+1;
            }
            if(s==seatNumber)
            break;
        }
    }
} catch (ClassNotFoundException e) {
    out.println("Error: Unable to load MySQL JDBC driver.");
} catch (SQLException e) {
    out.println("Error: Unable to connect to the database.");
    out.println("Error message: " + e.getMessage());
} finally {
    // Close the database connection
    if (conn != null) {
        try {
            conn.close();
        } catch (SQLException e) {
            // Ignore
        }
    }
}
%>
    
</body>
</html>
