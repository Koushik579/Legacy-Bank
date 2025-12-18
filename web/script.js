

$(document).ready(function () {
    $("#signuppage").click(function () {
        $("#signup").animate({height: "100vh", width: "100%", opacity: "1"}, 500);
    });
    $("#loginpage").click(function () {
        $("#signup").animate({height: "0", width: "0", opacity: "0"}, 500);
    });
});

