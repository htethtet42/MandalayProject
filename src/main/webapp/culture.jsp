<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Culture of Mandalay</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">    
<style>
:root {
    --mandalay-gold: #deae49;
    --mandalay-gold-dark: #c9a227;
    --mandalay-accent: #c3f24b;
    --deep-charcoal: #1a1a1a;
    --soft-white: #fcfcfc;
}

body {
    font-family: 'Pyidaungsu', sans-serif;
    background-color: var(--soft-white);
    margin: 0;
}

/* NAVBAR */
.navbar {
    width: 100%;
	background: linear-gradient(to left, #deae49, #c3f24b);
    color: white;
}

.nav-inner {
    max-width: 1200px;
    margin: auto;
    padding: 15px 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.nav-menu {
    list-style: none;
    display: flex;
    gap: 20px;
}

.nav-menu a {
    color: #333;
    text-decoration: none;
}

.nav-menu a:hover,
.nav-menu a.active {
    border-bottom: 2px solid yellow;
    font-weight: bold;
}
.festival-mosaic {
    flex: 1;
    display: grid;
    grid-template-columns: 2fr 1fr; /* One large column, one small */
    grid-template-rows: 150px 150px;
    gap: 15px;
    height: 315px;
}.mosaic-main {
    grid-row: span 2; /* Makes the first image tall */
}

.mosaic-main img, .mosaic-side img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    border-radius: 15px;
    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
}

.mosaic-side img {
    /* Giving small images a different border style for variety */
    border: 2px solid #c3f24b; 
}

/* ENHANCED HERO */
.culture-hero {
    height: 70vh;
    color: #4a3728;
    font-size:1.4rem;
    background: linear-gradient(180deg, #e6be8a 0%, #a8ab5b 100%);
    display: flex;
    justify-content: center;
    line-height:1.8;
    align-items: center;
    text-shadow: 2px 2px 10px rgba(0,0,0,0.3);
}

.culture-img-box {
    flex: 1;
    height: 350px; /* Adjusted height for better balance */
    background: #ddd;
    border-radius: 20px;
    overflow: hidden; /* Clips the image corners to match border-radius */
    box-shadow: 0 10px 20px rgba(0,0,0,0.1); /* Adds a soft depth */
}

.culture-img-box img {
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.hero-overlay h1 {
    font-size: 64px;
    letter-spacing: -1px;
    margin-bottom: 5px;
}

/* SECTION HEADERS */
.section-title {
    text-align: center;
    padding-top: 60px;
    font-size: 32px;
    color: var(--deep-charcoal);
}

.section-title::after {
    content: '';
    display: block;
    width: 60px;
    height: 4px;
    background: linear-gradient(to right, #deae49, #c3f24b);
    margin: 15px auto;
}
.architecture-windows {
    flex: 1;
    display: flex;
    gap: 20px;
    height: 400px; /* Taller for architecture */
}

.window-box {
    flex: 1;
    position: relative;
    overflow: hidden;
    border-radius: 50px 50px 10px 10px; /* Archway shape at the top */
    transition: all 0.5s ease;
    border: 2px solid #deae49;
}

.window-box img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    filter: sepia(30%); /* Gives an "Antique/Historical" feel */
    transition: 0.5s;
}

/* Hover Effect: The "Window" expands */
.window-box:hover {
    flex: 1.5;
    filter: sepia(0%);
}

.window-box span {
    position: absolute;
    bottom: 0;
    width: 100%;
    background: rgba(74, 55, 40, 0.8); /* Deep Bronze background */
    color: #fff;
    padding: 10px;
    text-align: center;
    font-family: 'Pyidaungsu', sans-serif;
    font-size: 0.9rem;
}

/* CULTURE SECTION - ALTERNATING LAYOUT */
.culture-container {
    padding: 40px 10% 80px;
}

.culture-item {
    display: flex;
    align-items: center;
    gap: 50px;
    margin-bottom: 80px;
}

.culture-item:nth-child(even) { flex-direction: row-reverse; }

.culture-text { flex: 1;text-align:left; }
.culture-text i { font-size: 35px; color: var(--mandalay-gold-dark); margin-bottom: 20px; }
.culture-text h2 { font-size: 28px;margin-top:10px;line-height:2.2; margin-bottom: 15px; color: var(--deep-charcoal); }
.culture-text p { font-size: 17px; line-height: 1.8; color: #4a3728; margin-top:1 }

/* REFINED QUOTE */
.culture-quote {
    background: var(--deep-charcoal);
    color: var(--mandalay-gold);
    padding: 100px 20%;
    text-align: center;
    position: relative;
}

.culture-quote p {
    font-size: 26px;
    font-family: Georgia, serif;
    line-height: 1.5;
}
.ten-flowers-grid {
    flex: 1;
    display: grid;
    /* This creates 5 columns and 2 rows */
    grid-template-columns: repeat(5, 1fr); 
    grid-template-rows: repeat(2, 150px);
    gap: 10px;
    background: transparent;
}

.ten-flowers-grid img {
    width: 100%;
    height: 100%;
    object-fit: cover; /* Keeps images from stretching */
    border-radius: 8px; /* Slightly rounded corners for each mini-photo */
    transition: transform 0.3s ease;
    border: 1px solid #e6be8a; /* Thin gold border around each art piece */
}

/* Fun effect: zoom in slightly when hovering over a specific art */
.ten-flowers-grid img:hover {
    transform: scale(1.1);
    z-index: 10;
    box-shadow: 0 5px 15px rgba(0,0,0,0.3);
}
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

<!-- HERO HEADER -->
<section class="culture-hero">
    <div class="hero-overlay">
        <h1>မန္တလေး၏ အမွေအနှစ်</h1>
        <p>ရတနာပုံရွှေမြို့တော်၏ ရှေးမူမပျက် အမွေအနှစ်များဆီသို့</p>
    </div>
</section>

<h2 class="section-title">ရိုးရာယဉ်ကျေးမှု၏ မဏ္ဍိုင်လေးရပ်</h2>

<section class="culture-container">

    <div class="culture-item">
        <div class="culture-text">
            <i class="fa-solid fa-place-of-worship"></i>
            <h2>ကိုးကွယ်ယုံကြည်မှုနှင့် စိတ်ပိုင်းဆိုင်ရာ အနှစ်သာရ</h2>
            <p>မန္တလေးမြို့သည် မြန်မာ့ဗုဒ္ဓဘာသာ၏ ဗဟိုချက်မဖြစ်ပြီး ထောင်ပေါင်းများစွာသော သံဃာတော်များနှင့် ရှေးဟောင်းဘုန်းတော်ကြီးကျောင်းများ တည်ရှိရာနေရာဖြစ်သည်။ မြို့၏နေ့စဉ်ဘဝသည် နံနက်ခင်းဆွမ်းခံကြွမှုများ၊ မဟာမြတ်မုနိရုပ်ပွားတော်မြတ်ကြီး၏ ရွှေရောင်ဝင်းပမှုများနှင့်အတူ စတင်လေ့ရှိသည်။ ဤမြို့တွင် ဘာသာရေးသည် လူနေမှုဘဝပုံစံတစ်ခုဖြစ်ပြီး ရှေးဟောင်းထုံးတမ်းစဉ်လာများနှင့် ယနေ့ခေတ်ကြည်ညိုသဒ္ဓါတရားများ အေးချမ်းစွာ ပေါင်းစပ်လျက်ရှိသည်။</p>
        </div>
        <div class="culture-img-box">
        <img src="images/alms1.jpg" alt="Alms Round">
    </div>
    </div>

    <div class="culture-item">
        <div class="culture-text">
            <i class="fa-solid fa-masks-theater"></i>
            <h2>အနုပညာနှင့် ပန်းဆယ်မျိုးလက်မှုပညာ</h2>
            <p>နူးညံ့လှသော ရွှေဆိုင်းခတ်ပညာမှသည် လက်ရာမြောက် ကျောက်ဆစ်အတတ်နှင့် ပိုးထည်ရက်လုပ်မှုများအထိ မန္တလေးသည် လက်မှုပညာရှင်တို့၏ မြို့တော်ဖြစ်သည်။ ဤ "ပန်းဆယ်မျိုး" ရိုးရာအနုပညာရပ်များသည် မျိုးဆက်တစ်ခုမှတစ်ခုသို့ လက်ဆင့်ကမ်းလာသည့် မြင့်မြတ်သောအမွေအနှစ်များဖြစ်ပြီး ရတနာပုံခေတ်၏ နန်းသုံးလက်မှုပညာရပ်များကို ဆက်လက်ထိန်းသိမ်းထားခြင်းဖြစ်သည်။</p>
        </div>
        <div class="ten-flowers-grid">
        <img src="images/panbe.jpg" alt="Blacksmithing">
        <img src="images/panbu.jpg" alt="Woodcarving">
        <img src="images/panyun.jpg" alt="Lacquerware">
        <img src="images/panchi.jpg" alt="Painting">
        <img src="images/panyawt.jpg" alt="Stucco">
        <img src="images/pantamawt.jpg" alt="Stone Carving">
        <img src="images/pantain.jpg" alt="Goldsmithing">
        <img src="images/pantin.jpg" alt="Bronze Casting">
        <img src="images/pantaut.jpg" alt="Floral Masonry">
        <img src="images/panyan.jpg" alt="Bricklaying">
    </div>
    </div>

    <div class="culture-item">
        <div class="culture-text">
            <i class="fa-solid fa-republican"></i>
            <h2>ရိုးရာပွဲတော်များ</h2>
            <p>မန္တလေးမြို့၏ ဘဝနေထိုင်မှုကို လအလိုက်ကျင်းပသော စည်ကားသိုက်မြိုက်သည့် ပွဲတော်များဖြင့် ဖော်ကျူးလေ့ရှိသည်။ ခမ်းနားသော သင်္ကြန်ရေသဘင်ပွဲတော်ဖြစ်စေ၊ ဆီမီးထွန်းညှိပူဇော်သော သီတင်းကျွတ်ပွဲတော်ဖြစ်စေ၊ ဒေသန္တရဘုရားပွဲများဖြစ်စေ ဤပွဲတော်များသည် ပျော်ရွှင်မှု၊ အလှူဒါနပြုမှုနှင့် ရောင်စုံရိုးရာဓလေ့များဖြင့် လူမှုအသိုက်အဝန်းကို စည်းလုံးစေပါသည်။</p>
        </div>
        <div class="festival-mosaic">
        <div class="mosaic-main"><img src="images/thingyan.jpg" alt="Thingyan"></div>
        <div class="mosaic-side"><img src="images/thadingyut.jpg" alt="Thadingyut"></div>
        <div class="mosaic-side"><img src="images/elephant.jpg" alt="Elephant Dance"></div>
    </div>
    </div>
    
    <div class="culture-item">
    <div class="culture-text">
        <i class="fa-solid fa-gopuram"></i>
    <h2>သမိုင်းနှင့် ဗိသုကာပညာ</h2>
    <p>
        မြန်မာ့နောက်ဆုံးမင်းနေပြည်တော်ဖြစ်သည်နှင့်အညီ မန္တလေးမြို့၏ အသွင်အပြင်ကို ခမ်းနားသော ပုဂံ၊ နန်းမြို့ရိုး၊ ကျုံးနှင့် ထင်ရှားကျော်ကြားသော ဘုရားပုထိုးများဖြင့် ပုံဖော်ထားသည်။ ရွှေနန်းတော်ကျောင်းကဲ့သို့ သစ်သားဗိသုကာလက်ရာများမှသည် ကမ္ဘာ့အကြီးဆုံးစာအုပ်ရှိရာ ကုသိုလ်တော်ဘုရားအထိ ဗိသုကာလက်ရာတိုင်းသည် တောက်ပခဲ့သော အတိတ်သမိုင်းနှင့် ခိုင်မာသော ယဉ်ကျေးမှုအကြောင်းကို ပြောပြနေပါသည်။
    </p>
    </div>
    <div class="architecture-windows">
        <div class="window-box box-1">
            <img src="images/bagan.jpg" alt="Bagan">
            <span>ပုဂံခေတ်ဗိသုကာ</span> </div>
        <div class="window-box box-2">
            <img src="images/download.jpg" alt="Shwenandaw Monastery">
            <span>ရွှေနန်းတော်ကျောင်း</span> </div>
    </div>
</div>
    

</section>

<!-- Quote -->
<section class="culture-quote">
    <i class="fa-solid fa-quote-left" style="font-size: 40px; opacity: 0.3; margin-bottom: 20px;"></i>
    <p>“Mandalay is not just a city — it is the living soul of Myanmar’s heritage.”</p>
</section>
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
