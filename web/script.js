

$(document).ready(function () {
    $("#signuppage").click(function () {
        $("#signup").animate({height: "100vh", width: "100%", opacity: "1"}, 500);
    });
    $("#loginpage").click(function () {
        $("#signup").animate({height: "0", width: "0", opacity: "0"}, 500);
    });
});

function togglepass(img)
{
    const pass = document.getElementById("pass");
    if (pass.type === "password")
    {
        pass.type = "text";
        img.src = "images/showpass.png";
    } else {
        pass.type = "password";
        img.src = "images/hidepass.png";
    }
}