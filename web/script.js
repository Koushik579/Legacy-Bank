

$(document).ready(function () {
    $("#signuppage").click(function () {
        $("#signup").animate({height: "100vh", width: "100%", opacity: "1"}, 500);
    });
    $("#loginpage").click(function () {
        $("#signup").animate({height: "0", width: "0", opacity: "0"}, 500);
    });
});

function togglepass()
{
    const pass = document.getElementById("pass");
    const image = document.getElementById("passimg");
    if (pass.type === "password")
    {
        pass.type = "text";
        image.src = "images/showpass.png";
    } else {
        pass.type = "password";
        image.src = "images/hidepass.png";
    }
}