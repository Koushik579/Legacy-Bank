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
        <link rel="stylesheet" href="<%= request.getContextPath()%>/css/masterStyle.css">
        <link rel="stylesheet" href="<%= request.getContextPath()%>/css/style.css">

        <script src="<%= request.getContextPath()%>/js/jquery.js"></script>
        <script src="<%= request.getContextPath()%>/js/angular.js"></script>
        <script src="<%= request.getContextPath()%>/js/script.js"></script>
    </head>
    <body>
        <%
            /*HttpSession ses = request.getSession(false);
            if(ses != null && ses.getAttribute("username")!=null)
            {
                response.sendRedirect(request.getContextPath()+"/web/account.jsp");
            }
            else{
                response.sendRedirect(request.getContextPath()+"/web/index.jsp");
            }*/
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires", 0);
        %>

        <div id="maincont">
            <form action="<%= request.getContextPath()%>/signupConfirm" method="post">
                <div id="signup" class="sign">
                    <h1 style="color: #5CC3FF; font-size: 20px; ">Signup</h1>
                    <input type="text" name="fname"  placeholder="First Name" required/>
                    <br />
                    <input type="text" name="lname"  placeholder="Last Name" required/>
                    <br />
                    <input type="text" name="usernm"  placeholder="Create Username" required/>
                    <br />
                    <input type="text" name="email"  placeholder="Email Id" required/>
                    <br />
                    <input type="text" name="phn"  placeholder="Phone Number" required/>
                    <br />
                    <input type="text" name="pass1"  placeholder="Password" required/>
                    <br />
                    <input type="password" name="pass2" id="pass2" placeholder="Confirm Password" required/>
                    <br />
                    <div>
                        <label id="showpassCheck"><input type="checkbox" onclick="togglesignuppass();"/>Show Password</label>
                    </div>
                    <br />
                    <button type="submit">Signup</button>
                    <br />
                    <p>${error}</p>
                    <br />
                    <label id="loginpage"><u>Already have an account ?..</u> </label>
                </div>
            </form>
            <form action="loginConfirm" method="post">
                <div id="login">
                    <img 
                        src="<%= request.getContextPath()%>/images/hidepass.png"
                        id="passimg"
                        data-show="<%= request.getContextPath()%>/images/showpass.png"
                        data-hide="<%= request.getContextPath()%>/images/hidepass.png"
                        />
                    <br />
                    <input type="text" name="userid"  placeholder="Username"/>
                    <br />

                    <input type="password" name="pass" placeholder="Password" id="pass"/>
                    <br>
                    <div>
                        <label id="showpassCheck"><input type="checkbox" onclick="toggleloginpass();"/>Show Password</label>
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

