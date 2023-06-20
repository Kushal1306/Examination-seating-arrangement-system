<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <script>
       function demo() {
  if (document.f.t1.value == "") {
    alert("Please enter the User name.");
    document.f.t1.focus();
    return false;
  }
  if (document.f.t2.value == "") {
    alert("Please enter the password.");
    document.f.t2.focus();
    return false;
  }
  alert("Welcome User, thanks for logging in.");
  return true;
}

        </script>
</head>
<body>
    <div class="login-wrap">
        <div class="login-html">
            <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
            <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
            
            <div class="login-form">
                <div class="sign-in-htm">
                    <form name="f" action='fverification.jsp' onsubmit="return demo();">
                    <div class="group">
                        <label for="user" class="label">Username</label>
                        <input id="user" type="text" class="input" name=t1>
                    </div>
                    <div class="group">
                        <label for="pass" class="label">Password</label>
                        <input id="pass" type="password" class="input" data-type="password" name=t2>
                    </div>
                
                    <div class="group">
                        <input type="submit" class="button" value="Sign In">
                    </div>
                    <div class="hr"></div>
                    <div class="foot-lnk">
                        <a href="password.jsp">Forgot Password?</a>
                    </div>
                </form>
                </div>
                <div class="sign-up-htm">
                   <form name="f" action='fregister.jsp' onsubmit="return demo();"> 
                    <div class="group">
                        <label for="user" class="label">Username</label>
                        <input id="user" type="text" class="input" name=t1>
                    </div>
                    <div class="group">
                        <label for="pass" class="label">Password</label>
                        <input id="pass" type="password" class="input" data-type="password" name=t2>
                    </div>
    
                    <div class="group">
                        <input type="submit" class="button" value="Sign Up">
                    </div>
                    <div class="hr"></div>
                    <div class="foot-lnk">
                        <label for="tab-1">Already Member?</a>
                  
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
</body>
</html>