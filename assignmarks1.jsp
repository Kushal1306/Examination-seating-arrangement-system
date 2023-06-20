<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
   body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        form {
            display: flex;
            flex-direction: column;
            width: 30%;
            margin:2% 30% 0 30%;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
        }
        label {
            margin-bottom: 7px;
            font-weight: bold;
        }
        input[type="text"], select {
            padding: 10px;
            margin-bottom: 5px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 16px;
        }
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #3e8e41;
        }
</style>
<body>
   <center><h3>Enter the marks of the student</h3>
    <form action="assignmarks.jsp" >
        <label for="fname">Enter Roll No</label>
        <input type="text" id="fname" name="t1">
        <label for="sname">Scripting Languages</label>
        <input type="text" id="sname" name="t2">
        <label for="wname">Web Technologies</label>
<input type="text" id="wname" name="t3">
<label for="cname">Compiler Design</label>
<input type="text" id="cname" name="t4">
<label for="aname">AC/Honor/Minor</label>
<input type="text" id="aname" name="t5">
<label for="pname">Proffesional Elective</label>
<input type="text" id="pname" name="t6">
        <input type="submit" value="Update Marks">

    </form>
   </center>
</body>
</html>