<%-- 
    Document   : index
    Created on : Dec 20, 2025, 10:31:37 PM
    Author     : username
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Legacy Bank</title>
        <script src="jquery.js"></script>
        <script src="angular.js"></script>
        <script src="script.js"></script>
        <link rel="stylesheet" href="masterStyle.css"/>
        <link rel="stylesheet" href="style.css" />
    </head>
    <body>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires", 0);
        %>

        <div id="maincont">
            <form action="signupConfirm" method="post">
                <div id="signup" class="sign">
                    <h1 style="color: yellow; font-size: 50px; -webkit-text-stroke: 2px black">Legacy Bank</h1>
                    <input type="text" name="fname"  placeholder="First Name"/>
                    <br />
                    <input type="text" name="lname"  placeholder="Last Name"/>
                    <br />
                    <input type="text" name="usernm"  placeholder="Create Username"/>
                    <br />
                    <input type="text" name="email"  placeholder="Email Id"/>
                    <br />
                    <input type="text" name="phn"  placeholder="Phone Number"/>
                    <br />
                    <input type="text" name="pass1"  placeholder="Password"/>
                    <br />
                    <input type="text" name="pass2" placeholder="Confirm Password"/>
                    <br />
                    <br />
                    <button type="submit">Signup</button>
                    <br />
                    <br />
                    <label id="loginpage"><u>Already have an account ?..</u> </label>
                </div>
            </form>
            <form action="loginConfirm" method="post">
                <div id="login">
                    <img src="images/hidepass.png" id="passimg" />
                    <br />
                    <input type="text" name="userid"  placeholder="Username"/>
                    <br />

                    <input type="password" name="pass" placeholder="Password" id="pass"/>
                    <br>
                    <div>
                        <label id="showpassCheck"><input type="checkbox" onclick="togglepass();"/>Show Password</label>
                    </div>
                    <br>
                    <p class="errormassage">${error}</p>
                    <br />
                    <button type="submit">Login</button>
                    <br />
                    <br />
                    <br />
                    <br />
                    <label id="signuppage"><u>Don't have an account ?..</u> </label>
                </div>
            </form>
        </div>

    </body>
</html>

