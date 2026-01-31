<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to Mandalay</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<style>
.home-bg {
    min-height: 100vh;
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    background: url("images/mandalay1.jpg") no-repeat center center / cover;
}
</style>
</head>
<body class="home-bg">

<!-- NAV BAR -->
<nav class="navbar">
    <div class="nav-inner">
        <div class="logo">Mandalay</div>
        <ul class="nav-menu">
            <li><a href="home.jsp">ပင်မစာမျက်နှာ</a></li>
            <li><a href="about.jsp">မန္တလေးမြေပုံ</a></li>
            <li><a href="places.jsp">နေရာများ</a></li>
            <li><a href="culture.jsp">ယဉ်ကျေးမှု</a></li>
            <li><a href="earthquake.jsp">ငလျင်အင်အားကြီးမှု</a></li>
            <li><a href="contact.jsp">ဆက်သွယ်ရန်</a></li>
        </ul>
    </div>
</nav>

<!-- HOME CONTENT -->
<div class="home-hero">
    <div class="home-container fade">
        <h1>Welcome to Mandalay</h1>
        <p>
            မန္တလေးမြို့၏ သမိုင်းဝင်အမွေအနှစ်များနှင့် အလှအပများကို လေ့လာလိုက်ပါ။
        </p>

        <div class="home-buttons">
            <a href="places.jsp" class="btn primary">Explore Places</a>
            <a href="about.jsp" class="btn secondary">Learn More</a>
        </div>
    </div>
</div>

<footer>
    <p>© 2026 Mandalay Project Java Web Application</p>
    <div class="social-icons">
        <a href="#"><i class="fa-brands fa-facebook"></i></a>
        <a href="#"><i class="fa-brands fa-instagram"></i></a>
        <a href="#"><i class="fa-brands fa-x-twitter"></i></a>
    </div>
</footer>


</body>
</html>
