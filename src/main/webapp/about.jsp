
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>About Mandalay | ရွှေမန္တလေး</title>

<link rel="stylesheet" href="style.css">
<link rel="stylesheet"
 href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

<style>
:root {
    --mandalay-gold: #deae49;
    --mandalay-dark: #292929;
    --mandalay-light: #fdf7e7;
}

/* General */
html {
    scroll-behavior: smooth;
}

body {
    margin: 0;
    color: var(--mandalay-dark);
    background: #fff;
}

/* Navigation */
.navbar {
    position: relative;
    z-index: 10;
}

/* About Hero */
.about-hero {
    padding: 75px 20px;
    text-align: center;
    background:
        linear-gradient(rgba(30,25,15,.48), rgba(30,25,15,.55)),
        url("images/mandalay1.jpg") center/cover no-repeat;
}

.about-hero-content {
    max-width: 850px;
    margin: auto;
    padding: 45px 30px;
    border-radius: 22px;
    background: rgba(255,255,255,.78);
    backdrop-filter: blur(10px);
    box-shadow: 0 12px 35px rgba(0,0,0,.18);
    animation: aboutAppear .8s ease;
}

.about-label {
    display: inline-block;
    color: #8d681c;
    background: rgba(222,174,73,.2);
    border: 1px solid rgba(222,174,73,.5);
    padding: 8px 18px;
    border-radius: 30px;
    font-size: 13px;
    font-weight: bold;
    letter-spacing: 2px;
}

.about-hero h1 {
    font-size: clamp(32px, 5vw, 48px);
    margin: 18px 0;
}

.about-hero p {
    font-size: 17px;
    line-height: 1.9;
    margin: 0;
}

/* Main Sections */
.about-section {
    padding: 70px 7%;
}

.section-heading {
    text-align: center;
    margin-bottom: 40px;
}

.section-heading span {
    color: #a77c24;
    font-size: 13px;
    font-weight: bold;
    letter-spacing: 3px;
}

.section-heading h2 {
    font-size: clamp(27px, 4vw, 37px);
    margin: 12px 0;
}

.section-heading p {
    color: #666;
    line-height: 1.8;
    max-width: 700px;
    margin: auto;
}

/* Statistics */
.stats-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 22px;
    max-width: 1000px;
    margin: 40px auto 0;
}

.stat-item {
    padding: 28px 18px;
    border-radius: 16px;
    text-align: center;
    background: #fdf7e7;
    border-bottom: 4px solid var(--mandalay-gold);
    box-shadow: 0 6px 20px rgba(0,0,0,.07);
    transition: .3s ease;
}

.stat-item:hover {
    transform: translateY(-7px);
}

.stat-icon {
    color: #c39735;
    font-size: 27px;
    margin-bottom: 14px;
}

.stat-item h3 {
    color: #b1842b;
    font-size: 25px;
    margin: 5px 0 10px;
}

.stat-item p {
    font-size: 14px;
    margin: 0;
}

/* History Section */
.history-section {
    background: #faf7ef;
}

.history-content {
    max-width: 1050px;
    margin: auto;
    display: grid;
    grid-template-columns: 1.1fr .9fr;
    gap: 35px;
    align-items: center;
}

.history-text {
    line-height: 2;
    font-size: 16px;
    color: #555;
    text-align: justify;
}

.history-text p {
    margin-top: 0;
}

.history-image {
    width: 100%;
    height: 390px;
    object-fit: cover;
    border-radius: 18px;
    box-shadow: 0 10px 28px rgba(0,0,0,.15);
}

/* Map */
.map-section {
    background: white;
}

.map-container {
    max-width: 1100px;
    margin: auto;
    height: 430px;
    overflow: hidden;
    border-radius: 18px;
    border: 5px solid #fdf7e7;
    box-shadow: 0 10px 30px rgba(0,0,0,.12);
}

.map-container iframe {
    width: 100%;
    height: 100%;
    border: 0;
}

/* Music / Video */
.music-section {
    background: #faf7ef;
    text-align: center;
}

.video-container {
    position: relative;
    max-width: 850px;
    margin: auto;
    padding-bottom: 56.25%;
    height: 0;
    overflow: hidden;
    border-radius: 18px;
    border: 5px solid #fdf7e7;
    box-shadow: 0 10px 30px rgba(0,0,0,.15);
}

.video-container iframe {
    position: absolute;
    inset: 0;
    width: 100%;
    height: 100%;
    border: 0;
}

.music-icon {
    color: #bd8c22;
    margin-right: 10px;
}

/* Footer */
footer {
    background: #c3f24b;
    color: #111;
    text-align: center;
    padding: 20px 18px;
}

footer p {
    margin-bottom: 12px;
}

footer .social-icons i {
    width: 24px;
    margin: 0 10px;
    vertical-align: middle;
    transition: transform .3s;
    font-size: 25px;
}

footer .social-icons i:hover {
    transform: scale(1.2);
}

/* Animation */
@keyframes aboutAppear {
    from {
        opacity: 0;
        transform: translateY(20px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

/* Responsive */
@media (max-width: 750px) {
    .stats-grid {
        grid-template-columns: 1fr;
        max-width: 400px;
    }

    .history-content {
        grid-template-columns: 1fr;
    }

    .history-image {
        height: 280px;
    }

    .about-section {
        padding: 55px 20px;
    }

    .map-container {
        height: 330px;
    }
}

@media (max-width: 480px) {
    .about-hero {
        padding: 45px 15px;
    }

    .about-hero-content {
        padding: 30px 18px;
    }

    .about-hero p {
        font-size: 15px;
    }

    .history-text {
        font-size: 15px;
    }

    .map-container {
        height: 280px;
    }
}
</style>
</head>

<body>

<!-- NAVIGATION -->
<nav class="navbar">
    <div class="nav-inner">
        <div class="logo">ရွှေမန္တလေး</div>

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

<!-- ABOUT HERO -->
<section class="about-hero">
    <div class="about-hero-content">

        <span class="about-label">
            THE GOLDEN CITY OF MYANMAR
        </span>

        <h1>ရွှေမန္တလေး</h1>

        <p>
            မြန်မာ့ယဉ်ကျေးမှု၏ အသည်းနှလုံး၊
            သမိုင်းဝင်အမွေအနှစ်များနှင့်
            အလှတရားများ ပြည့်နှက်နေသော မန္တလေးမြို့တော်။
        </p>

    </div>
</section>

<!-- STATISTICS -->
<section class="about-section">

    <div class="section-heading">
        <span>MANDALAY AT A GLANCE</span>
        <h2>မန္တလေးမြို့အကြောင်း</h2>
        <p>
            မန္တလေးမြို့၏ အရေးပါသော အချက်အလက်များကို
            လေ့လာကြည့်ရှုလိုက်ပါ။
        </p>
    </div>

    <div class="stats-grid">

        <div class="stat-item">
            <div class="stat-icon">
                <i class="fa-solid fa-users"></i>
            </div>
            <h3>၁.၅၄ သန်း+</h3>
            <p>လူဦးရေ (၂၀၂၅)</p>
        </div>

        <div class="stat-item">
            <div class="stat-icon">
                <i class="fa-solid fa-road"></i>
            </div>
            <h3>၃၈၅ မိုင်</h3>
            <p>ရန်ကုန်မှ အကွာအဝေး</p>
        </div>

        <div class="stat-item">
            <div class="stat-icon">
                <i class="fa-solid fa-landmark"></i>
            </div>
            <h3>၁၈၅၇</h3>
            <p>တည်ထောင်သည့် ခရစ်နှစ်</p>
        </div>

    </div>
</section>

<!-- HISTORY -->
<section class="about-section history-section">

    <div class="section-heading">
        <span>HISTORY & HERITAGE</span>
        <h2>မန္တလေး၏ သမိုင်းကြောင်း</h2>
    </div>

    <div class="history-content">

        <div class="history-text">

            <p>
                မန္တလေးမြို့တော်သည် မြန်မာနိုင်ငံ၏
                ဒုတိယအကြီးဆုံးမြို့ဖြစ်ပြီး
                မန္တလေးတိုင်းဒေသကြီး၏ မြို့တော်ဖြစ်သည်။
                မြန်မာယဉ်ကျေးမှု အချက်အချာဌာန
                တစ်ခုလည်းဖြစ်သည်။
            </p>

            <p>
                မန္တလေးမြို့ကို ခရစ်နှစ် ၁၈၅၇ ခုနှစ်တွင်
                ကုန်းဘောင်မင်းဆက် (၁၁) ဆက်တွင်
                ဒဿမမြောက်ဖြစ်သော မြန်မာဘုရင်
                မင်းတုန်းမင်းမှ စတင်တည်ထောင်ခဲ့ခြင်း ဖြစ်သည်။
            </p>

            <p>
                ဧရာဝတီမြစ်၏ အရှေ့ဘက်တွင် တည်ရှိပြီး
                ကုန်းဘောင်မင်းဆက် မြန်မာနိုင်ငံ၏
                နောက်ဆုံးမင်းနေပြည်တော် ဖြစ်ခဲ့သည်။
                ယခုအခါ မြန်မာနိုင်ငံအထက်ပိုင်း၏
                အရေးပါသော စီးပွားရေးနှင့် ယဉ်ကျေးမှု
                မြို့တစ်မြို့ဖြစ်သည်။
            </p>

            <p>
                ရန်ကုန်မြို့မှ မန္တလေးမြို့သို့
                ကားလမ်းဖြင့် သွားလာရာတွင်
                ရွေးချယ်သည့် လမ်းကြောင်းပေါ်မူတည်၍
                အကွာအဝေး ကွာခြားနိုင်သည်။
            </p>

        </div>

        <img src="images/mandalayhill.jpg"
             alt="Mandalay Hill"
             class="history-image">

    </div>
</section>

<!-- GOOGLE MAP -->
<section class="about-section map-section">

    <div class="section-heading">
        <span>FIND YOUR WAY</span>
        <h2><i class="fa-solid fa-map-location-dot"></i>
            မန္တလေးမြို့၏ တည်နေရာ</h2>
        <p>
            Google Maps ကို အသုံးပြုပြီး
            မန္တလေးမြို့၏ တည်နေရာကို လေ့လာနိုင်ပါသည်။
        </p>
    </div>

    <div class="map-container">
        <iframe
            src="https://www.google.com/maps?q=Mandalay,Myanmar&output=embed"
            title="Mandalay Myanmar Map"
            allowfullscreen
            loading="lazy"
            referrerpolicy="no-referrer-when-downgrade">
        </iframe>
    </div>

</section>

<!-- MUSIC / VIDEO -->
<section class="about-section music-section">

    <div class="section-heading">
        <span>MUSIC & CULTURE</span>

        <h2>
            <i class="fa-solid fa-music music-icon"></i>
            ရွှေမန်းသူလေး
        </h2>

        <p>
            မန္တလေး၏ အငွေ့အသက်နှင့်
            မြန်မာ့ဂီတအလှကို ခံစားနားဆင်လိုက်ပါ။
        </p>
    </div>

    <div class="video-container">
        <iframe
            src="https://www.youtube.com/embed/oxCySS9pK98"
            title="ရွှေမန်းသူလေး"
            allow="accelerometer; autoplay; clipboard-write;
            encrypted-media; gyroscope; picture-in-picture; web-share"
            referrerpolicy="strict-origin-when-cross-origin"
            allowfullscreen>
        </iframe>
    </div>

</section>

<!-- FOOTER -->
<footer>
    <p>© 2026 Mandalay Project University Java Web Application</p>

    <div class="social-icons">
        <a href="#" aria-label="Facebook">
            <i class="fa-brands fa-facebook"></i>
        </a>

        <a href="#" aria-label="Instagram">
            <i class="fa-brands fa-instagram"></i>
        </a>

        <a href="#" aria-label="X">
            <i class="fa-brands fa-x-twitter"></i>
        </a>
    </div>
</footer>

</body>
</html>
