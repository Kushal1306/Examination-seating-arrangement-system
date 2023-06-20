<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        
         a { 
            display:flex;
            flex-direction: column;
            align-items:center;
            padding: 10px 20px;
            margin:20px 40% 20px;
            text-decoration: none;
            font-size: 18px;
            font-weight: bold;
            color: #F3F4F6;
            background-color: #6B7280;
            border-radius: 5px;
            box-shadow: 2px 2px 5px #E5E7EB;
            transition: background-color 0.3s ease;
          
   }
   
        
        a:hover {
            background-color: #4B5563;
        }
    </style>
</head>
<body>
    
 <marquee>
    Welcome <%=session.getAttribute("username") %>
 </marquee>
<div class="conatiner">
    <a href="mydetails.jsp"> My DETAILS</a>
    <a href="hallticket.jsp">View HallTicket</a>
    <a href="allotmentview.jspw"> Search Your ALLOTMENT</a>
    <a href="mymarks.jsp">MARK DETAILS</a>
    <a href="exam.jsp">EXAM SCHEDULE:</a>
</div>



    
</body>
</html>