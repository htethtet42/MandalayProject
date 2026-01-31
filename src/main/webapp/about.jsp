<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About Mandalay</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<style>
/* FOOTER */
footer {
    background: #c3f24b;
    color: #111;
    text-align: center;
    padding: 15px 18px;
}

footer .social-icons i {
    width: 24px;
    margin: 0 10px;
    vertical-align: middle;
    transition: transform 0.3s;
    font-size: 25px;
}

footer .social-icons i:hover {
    transform: scale(1.2);
}
/* Add this to your style.css */
.stats-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
    gap: 20px;
    margin: 30px 0;
}

.stat-item {
    background: #fdf7e7;
    padding: 20px;
    border-radius: 10px;
    text-align: center;
    border-bottom: 3px solid #deae49;
}

.stat-item h3 {
    font-size: 24px;
    color: #deae49;
    margin-bottom: 5px;
}

.stat-item p {
    font-size: 14px !important;
    margin-bottom: 0 !important;
}
.music-section {
    margin: 40px 0;
    text-align: center;
}

.music-section h3 {
    color: var(--mandalay-gold); /* Using your gold variable */
    margin-bottom: 20px;
    font-size: 22px;
}

.video-container {
    position: relative;
    padding-bottom: 56.25%; /* 16:9 Aspect Ratio */
    height: 0;
    overflow: hidden;
    border-radius: 15px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.15);
    border: 3px solid #fdf7e7; /* Matches your stat-item background */
}

.video-container iframe {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
}
</style>
</head>
<body>
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

<!-- ABOUT OVERLAY -->
<div class="about-card fade">
    <h1>ရွှေမန္တလေး</h1>
    
    <div class="stats-grid">
        <div class="stat-item">
            <h3>၁.၅၄ သန်း+</h3>
            <p>လူဦးရေ (၂၀၂၅)</p>
        </div>
        <div class="stat-item">
            <h3>၃၈၅ မိုင်</h3>
            <p>ရန်ကုန်မှ အကွာအဝေး</p>
        </div>
        <div class="stat-item">
            <h3>၁၈၅၇</h3>
            <p>တည်ထောင်သည့်ခရစ်နှစ်</p>
        </div>
    </div>

        <p>
            မန္တလေးမြို့တော်သည် မြန်မာနိုင်ငံ၏ ဒုတိယအကြီးဆုံးမြို့ဖြစ်ပြီး မန္တလေးတိုင်းဒေသကြီး၏ မြို့တော်ဖြစ်သည်။ မြန်မာယဉ်ကျေးမှု အချက်အချာဌာန တစ်ခုလည်းဖြစ်သည်။မန္တလေးမြို့ကို ခရစ်နှစ် ၁၈၅၇ ခုနှစ်တွင် ကုန်းဘောင်မင်းဆက် (၁၁) ဆက်တွင် ဒဿမ မြောက် ဖြစ်သော မြန်မာဘုရင် မင်းတုန်းမင်း မှစတင်တည်ထောင်ခဲ့ခြင်း ဖြစ်သည်။ ၂၀၂၅ ခုနှစ် စာရင်းအရ လူဦးရေ ၁,၅၄၁,၃၀၉ ယောက် ရှိသည်။ စီးပွားရေးမြို့တော် ရန်ကုန်မြို့မှ မန္တလေးမြို့သို့ သွားလာရာတွင် ရွေးချယ်သည့် လမ်းကြောင်းပေါ်မူတည်၍ အကွာအဝေး ကွာခြားမှုရှိသော်လည်း ကားလမ်းဖြင့်ဆိုလျှင် ခန့်မှန်းခြေ ၆၃၀ မှ ၇၂၀ ကီလိုမီတာ (မောင်းနှင်ချိန် ၇ နာရီမှ ၉ နာရီဝန်းကျင်) ရှိပါသည်။ မျဉ်းဖြောင့်အကွာအဝေး (လေကြောင်းခရီး) မှာမူ ၃၀၀ မှ ၅၀၀ ကီလိုမီတာ ခန့်သာရှိပြီး လေယာဉ်ဖြင့် သွားလာခြင်းသည် ကုန်းလမ်းခရီးထက် များစွာပို၍ မြန်ဆန်ပါသည်။ ဧရာဝတီမြစ်၏ အရှေ့ဘက်တွင် တည်ရှိသည်။ကုန်းဘောင်မင်းဆက် မြန်မာနိုင်ငံ၏ နောက်ဆုံးမင်းနေပြည်တော် ဖြစ်ခဲ့သည်။ ယခုအခါ မြန်မာနိုင်ငံအထက်ပိုင်း မန္တလေးတိုင်းဒေသကြီး၊ မန္တလေးခရိုင်တို၏ ရုံးစိုက်မြို့ဖြစ်သည်။ ရန်ကုန်မြို့ပြီးနောက် ဒုတိယအကြီးဆုံးသောမြို့ဖြစ်သည်။
        </p>

        <!-- MAP -->
        <div class="map-container">
            <iframe
                src="https://www.google.com/maps?q=Mandalay,Myanmar&output=embed" allowfullscreen="" loading="lazy">
            </iframe>
        </div>
        
        <!-- Music section -->
        <div class="music-section">
    	<h3><i class="fa-solid fa-music"></i>ရွှေမန်းသူလေး</h3>
    	<div class="video-container">
        	<iframe width="560" height="315" src="https://www.youtube.com/embed/oxCySS9pK98?si=xy9K4VGLdOLrdLSb" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
    	</div>
</div>
        
 </div>
<footer>
    <p>© 2026 Mandalay Project University Java Web Application</p>
    <div class="social-icons">
        <a href="#"><i class="fa-brands fa-facebook"></i></a>
        <a href="#"><i class="fa-brands fa-instagram"></i></a>
        <a href="#"><i class="fa-brands fa-x-twitter"></i></a>
    </div>
</footer>

</body>
</html>