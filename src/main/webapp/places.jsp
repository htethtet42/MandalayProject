<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mandalay | Places</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

<style>

* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    font-family: 'Pyidaungsu', sans-serif;
}

.logo {
    color: white;
    font-size: 24px;
    font-weight: bold;
}
/* PAGE TITLE */

* {
    outline: none;
}

img {
    border: none;
}

figure {
    border: none;
}

.page-title {
    text-align: center;
    margin: 60px 0 40px;
    font-size: 36px;
    font-weight: bold;
    color: #333;
    position: relative;
    padding-bottom: 15px;
}
/* Add an elegant accent line under the text */
.page-title::after {
    content: '';
    position: absolute;
    bottom: 0;
    left: 50%;
    transform: translateX(-50%);
    width: 80px;
    height: 4px;
    background: linear-gradient(to right, #deae49, #c3f24b);
    border-radius: 2px;
}

/* PLACE CARD */
.place-container {
    max-width: 1200px;
    margin: 40px auto;
    padding: 20px;
}

.place-card {
	position:relative;
    display: flex;
    gap: 40px;
    background-color: #f5f5f5;
    padding: 30px;
    border-radius: 12px;
    font-family:'Pyidaungsu', sans-serif;
    box-shadow: 0 4px 10px rgba(0,0,0,0.2);
    margin-bottom: 40px;
    opacity: 0.9;
    transition: all 0.4s ease;
}
.place-card:hover {
    opacity: 1;
    transform: translateY(-8px);
    box-shadow: 0 14px 30px rgba(0,0,0,0.25);
}

.place-gallery img {
    width: 100%;
    border-radius: 12px;
    box-shadow: 0 6px 15px rgba(0,0,0,0.2);
}

.gallery-toggle-icon.open {
    transform: rotate(180deg);
}
.gallery-toggle-icon {
    color: #deae49;      /* icon color */
    margin-left: 10px;   /* space from title */
    cursor: pointer;     /* pointer on hover */
    font-size: 28px;     /* bigger size */
    transition: transform 0.3s ease;
}

.gallery-toggle-icon:hover {
    transform: scale(1.2); /* optional hover effect */
}
/* ARROW BUTTON */
.toggle-btn {
    cursor: pointer;
    font-size: 18px;
    margin-left: 10px;
    transition: transform 0.3s ease;
}

/* ROTATE ARROW */
.toggle-btn.active {
    transform: rotate(180deg);
}

/* Position the icon container at the bottom right */
.toggle-container {
    position: absolute;
    bottom: 20px;
    right: 20px;
    z-index: 10;
}

/* HIDE text & main image when gallery opens */
.place-card.gallery-open .place-text ,
.place-card.gallery-open .place-image{
    display: none;
}

/* Ensure gallery takes up full width when it appears */
.place-card.gallery-open .place-gallery {
    display: grid; /* Shows the gallery */
    width: 100%;
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

/* GALLERY DEFAULT STATE */
.place-gallery {
    display: none;
    margin-top: 20px;
}
/* Show gallery */
.place-gallery.show {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
    gap: 20px;
}
.place-gallery figure img {
    width: 100%;
    height: 200px; /* Set a fixed height */
    object-fit: cover; /* This crops the image to fit without stretching */
    border-radius: 8px;
}

/* GALLERY IMAGE */
.place-gallery img {
    width: 100%;
    border-radius: 10px;
}

/* FIGCAPTION */
.place-gallery figcaption {
    text-align: center;
    margin-top: 8px;
    font-size: 14px;
    color: #444;
}

.place-text {
    flex: 1;
}


.place-text p {
    line-height: 2.2;
    text-align: justify;
    font-size:17px;
}

.place-image {
    overflow: hidden;
    border-radius: 10px;
}

.place-image img {
    max-width: 500px;
    border-radius: 10px;
    transition: opacity 0.5s ease, transform 0.5s ease;
}
.place-text p:last-child {
    margin-top: 20px; /* space between description and icon */
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

/* RESPONSIVE */
@media (max-width: 900px) {
    .place-card {
        flex-direction: column;
        text-align: center;
    }

    .place-image img {
        width: 100%;
    }
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
<header class="section-header">
    <h1 class="page-title">ထင်ရှားသောနေရာများ</h1>
</header>
<div class="place-container">

 <!-- PLACE 1 -->
    <div class="place-card">
        <div class="place-text">
            <h2>မဟာမုနိ ရုပ်ရှင်တော်မြတ်ကြီး</h2>
            <p>
                မဟာမုနိ ရုပ်ရှင်တော်မြတ်ကြီး သည် မြန်မာနိုင်ငံ၊ မန္တလေးတိုင်းဒေသကြီး၊ မန္တလေးမြို့တွင် တည်ရှိသည်။ မန္တလေး မဟာမုနိ ဘုရား ကို မဟာမြတ်မုနိဟူ၍ လည်းကောင်း၊ ရခိုင်ဘုရားကြီးဟူ၍ လည်းကောင်းခေါ်ကြသည်။ မဟာမုနိ ရုပ်ပွားတော်မှာ ဉာဏ်တော် ၈ တောင် တစ်မိုက်၊ သို့မဟုတ် ၁၂ ပေ ၇ လက်မရှိပြီးလျှင် ပလ္လင်တော်မှ ၇ ပေမြင့်သည်။
                ရုပ်တုတော်၏ ထူးခြားချက်များမှာ ရောင်ခြည်တော်ခြောက်သွယ် ထွက်ရှိလေသည်။ ရိုသေကိုင်းရှိုင်းသူများမှာ အနီးကပ်ဖူးမြော်လာသောအခါ ရောင်ခြည်တော်များထွက်ရှိပြီး အယုံအကြည်မရှိသူများ ဖူးမြော်သောအခါ ရောင်ခြည်တော်များမှေးမှိန်သွားလေ့ရှိသည်ဟုအဆိုရှိလေသည်။ရုပ်တုတော်တည်ရှိသောနေရာ၏ပတ်ဝန်းကျင်အရပ်လေးမျက်နှာတို့တွင်အစောင့်အရှောက်အဖြစ် ကျောက်ရုပ်တုများထားရှိပြီး မကောင်းသော အကြံအစည်ရည်ရွယ်ချက်တို့နှင့် ဗုဒ္ဓရုပ်ပွားတော်အနီးသို့ လာရောက်သူတို့အား အဝေးသို့ ရှောင်ရှားသွားစေသည်။
            </p>
        </div>
        <div class="icon-box">
        <i class="fa-solid fa-circle-arrow-right gallery-toggle-icon" onclick="toggleGallery(this)" title="ပိုမိုကြည့်ရှုရန်"></i>
    </div>
        <div class="place-image">
            <img src="images/mahamuni_image_2.jpg" style="height: 300px; object-fit: cover; width: 100%;">
        </div>
        <!-- HIDDEN GALLERY -->
<div class="place-gallery">

    <figure>
        <img src="images/devotees.jpg" alt="Devotees before the image">
        <figcaption>ရုပ်ရှင်တော်မြတ်ကြီးကို ဖူးမြော်နေသော ယုံကြည်သူများ</figcaption>
    </figure>

    <figure>
        <img src="images/burma.jpg" alt="Corridor inside Pagoda">
        <figcaption>မဟာမုနိ ဘုရားအတွင်း လမ်းကြောင်း</figcaption>
    </figure>

    <figure>
        <img src="images/arcade.jpg" alt="Eastern Approach Market">
        <figcaption>အရှေ့ဘက်ဝင်ပေါက်ရှိ စျေးတန်း</figcaption>
    </figure>

    <figure>
        <img src="images/prayer_bells.jpg" alt="Prayer bells">
        <figcaption>ဘုရားဝင်ပေါက်ရှိ ဆုတောင်းခေါင်းလောင်းများ</figcaption>
    </figure>

</div>      
    </div>
    
    <!-- PLACE 2 -->
    <div class="place-card">
        <div class="place-text">
            <h2>ကုသိုလ်တော်ဘုရား</h2>
            <p>
                ကုသိုလ်တော်ဘုရား သည် မန္တလေးတောင်၏ အရှေ့တောင်ဘက်တွင် တည်ရှိပြီး မင်းတုန်းမင်း၏ ကုသိုလ်တော် ဖြစ်သည်။ မြန်မာသက္ကရာဇ် ၁၂၂၄ ဝါဆိုလတွင် မင်းတုန်းမင်း တည်ထားကိုးကွယ်ခဲ့သော ဘုရားဖြစ်ပြီး ဘွဲ့အမည်မှာ မဟာလောကမာရဇိန် ဖြစ်သည်။ကျောက်စာချပ်ရေ ၇၂၉ ချပ် အတွက် ဓမ္မစေတီ ၇၂၉ဆူကို ထုလုပ် ဝန်းရံတည်ထားခဲ့သည်။ ကျောက်စာများရေ များတဲ့ဘုရားဖြစ်သောကြောင့် ကမ္ဘာ့အကြီးဆုံးစာအုပ် ဟုတင်စားရေးသားကြသည်။
            </p>
        </div>
        <div class="icon-box">
        <i class="fa-solid fa-circle-arrow-right gallery-toggle-icon" onclick="toggleGallery(this)" title="ပိုမိုကြည့်ရှုရန်"></i>
    </div>
        <div class="place-image">
            <img src="images/kuthodaw_pagoda.jpg">
        </div>
        <!-- HIDDEN GALLERY -->
<div class="place-gallery">

    <figure>
        <img src="images/pagoda.jpg" alt="Devotees before the image">
        <figcaption>ဓမ္မစေတီအချို့</figcaption>
    </figure>
    
    <figure>
        <img src="images/pagoda4.jpg" alt="Prayer bells">
        <figcaption>မဟာလောကမာရဇိန်</figcaption>
    </figure>

    <figure>
        <img src="images/pagoda1.jpg" alt="Corridor inside Pagoda">
        <figcaption>ဓမ္မစေတီဂူပေါင်း ၇၂၉ ဆူကို အပေါ်စီးမှ မြင်တွေ့ရသော မြင်ကွင်း</figcaption>
    </figure>

    <figure>
        <img src="images/book3.jpg" alt="Eastern Approach Market">
        <figcaption>ကျောက်စာအချို့၏ ရှေးဟောင်းစာပေလက်ရာများကို အနီးကပ် လေ့လာနိုင်ပုံ</figcaption>
    </figure>

    <figure>
        <img src="images/pagoda3.jpg" alt="Prayer bells">
        <figcaption>မဟာလောကမာရဇိန် စေတီတော်မြတ်ကြီး၏ တင့်တယ်သပ္ပာယ်သော မြင်ကွင်း</figcaption>
    </figure>
    
     <figure>
        <img src="images/book.jpg" alt="Prayer bells">
        <figcaption>ကမ္ဘာ့အကြီးဆုံးစာအုပ်</figcaption>
    </figure>
    
    <figure>
        <img src="images/book2.jpg" alt="Prayer bells">
        <figcaption>ယူနက်စကို (UNESCO) အသိအမှတ်ပြု ကမ္ဘာ့အကြီးဆုံး စာအုပ်ဟု တင်စားရသော ကျောက်စာဂူ</figcaption>
    </figure>
    
    <figure>
        <img src="images/pagoda5.jpg" alt="Prayer bells">
        <figcaption>မဟာလောကမာရဇိန် စေတီတော်ဝင်းအတွင်းရှိ သပ္ပာယ်ဖွယ်ရာ အတွင်းပိုင်းမြင်ကွင်း</figcaption>
    </figure>

</div>
    </div>
    <!-- PLACE 3 -->
    <div class="place-card">
        <div class="place-text">
            <h2>ကျောက်စိမ်းစေတီတော်</h2>
            <p>
                ကျောက်စိမ်းစေတီတော်သည် မြန်မာနိုင်ငံ၊မန္တလေးတိုင်းဒေသကြီး၊ အမရပူရမြို့နယ်၊ ဆင်နွယ်ကျေးရွာ အုပ်စု ကွင်းအမှတ်(၆၂၈)၊ ရန်ကုန်-မန္တလေး အမြန်လမ်းမကြီး၏ မိုင်တိုင် (၃၆၁) အနောက်ဘက် ပေ (၆၀၀)ခန့်နှင့် စစ်ကိုင်း-မြစ်ငယ်ကားလမ်း၏ မိုင်တိုင် (၄/၇) တောင်ဘက် ပေ(၁၀၀၀)ခန့်အကွာတွင် တည်ရှိသည်။ ရန်ကုန်-မန္တလေး အမြန်လမ်းမကြီး၏ အထက် ၉'မြင့်ပြီး ၅-ဧက အကျယ်အဝန်းရှိ ကုန်းမြေပေါ်တွင် တည်ထားခြင်း ဖြစ်သည်။
                စေတီတော်၏ အလှူရှင် မိသားစုမှာ သီဟသုဓမ္မမဏိဇောတဓရ ဦးစိုးနိုင်၊ ဒေါ်အေးအေးခိုင် (အေးအေးခိုင် ကျောက်မျက်ကုမ္ပဏီ) မိသားစု ဖြစ်သည်။ စေတီတော်သာမက ဘုရားဝတ္တကမြေ အလှူရှင်လည်း ဖြစ်သည်။ စေတီတော်ကြီး တည်ထားပူဇော်နိုင်ရန် ၂၅-နှစ်ကျော် ကာလတိုင်အောင် ကျောက်စိမ်းများကို စုဆောင်းခဲ့ရသည်။ 
            </p>
        </div>
        <div class="icon-box">
        <i class="fa-solid fa-circle-arrow-right gallery-toggle-icon" onclick="toggleGallery(this)" title="ပိုမိုကြည့်ရှုရန်"></i>
    </div>
        <div class="place-image" style="width: 400px; height: 350px;">
            <img src="images/jade.jpg" style="width: 100%; height: 100%; object-fit: cover;">
        </div>
        <!-- HIDDEN GALLERY -->
<div class="place-gallery">

    <figure>
        <img src="images/jade5.jpg" alt="Devotees before the image">
        <figcaption>စေတီတော် တစ်ခုလုံး၏ မြင်ကွင်း</figcaption>
    </figure>
    
    <figure>
        <img src="images/jade2.jpg" alt="Prayer bells">
        <figcaption>ကျောက်စိမ်းစေတီတော် မုခ်ဦး</figcaption>
    </figure>

    <figure>
        <img src="images/jade3.jpg" alt="Corridor inside Pagoda">
        <figcaption>ဝေရောစန ကျောက်စိမ်းစေတီတော်</figcaption>
    </figure>

    <figure>
        <img src="images/jade4.jpg" alt="Eastern Approach Market">
        <figcaption>ကမ္ဘာကျော် ကျောက်စိမ်းစေတီတော်</figcaption>
    </figure>

</div>
    </div>

    <!-- PLACE 4 -->
    <div class="place-card">
        <div class="place-text">
            <h2>ရွှေနန်းတော်ကျောင်း</h2>
            <p>
                ရွှေကျောင်းဟု လူသိများသော ရွှေနန်းတော်ကျောင်းသည် နှစ်ပေါင်း (၁၃၀) ကျော် သက်တမ်းရှိပြီး
                မန္တလေးတိုင်းဒေသကြီး အောင်မြေသာဇံမြို့နယ်တွင် တည်ရှိသည်။
                ကုန်းဘောင်ခေတ် မြန်မာအနုပညာ ဗိသုကာလက်ရာစံပြု ကျောင်းကြီးဖြစ်သည်။ကျောင်းကြီးတစ်ခုလုံးတွင် မြန်မာမှု သစ်သားပန်းပု အခြေခံ ခြူးပန်း၊ ခြူးနွယ်အပြောက်အမွှမ်းများ၊ ရုပ်လုံးရုပ်ကြွများ၊ ကျေးငှက် တိရစ္ဆာန်ရုပ်များ၊ နံရံကပ်ရုပ်ကြွများနှင့် အတွင်းမာရဘင် အရှေ့ပိုင်ကွန်းစင်တိုင် အခြေတွင် ဇာတ်ကြီးဆယ်ဘွဲ့၊ တောထွက်ခန်း၊ မဟာပဒုမဇာတ်၊ ဥတေနဇာတ်တော်များကို စိတ်ဝင်စားဖွယ် လက်ရာမြောက်စွာ အနုစိတ်တပ်ဆင်ထားသည်။
            </p>
        </div>
        <div class="icon-box">
        <i class="fa-solid fa-circle-arrow-right gallery-toggle-icon" onclick="toggleGallery(this)" title="ပိုမိုကြည့်ရှုရန်"></i>
    </div>
        <div class="place-image">
            <img src="images/shwe_kyaung.jpg">
        </div>
         <!-- HIDDEN GALLERY -->
<div class="place-gallery">

    <figure>
        <img src="images/monastery8.jpg" alt="Devotees before the image">
        <figcaption>သစ်သားပန်းပု လက်ရာများကြောင့် ‘Teak Monastery’ အဖြစ်ပိုမို လူသိများ</figcaption>
    </figure>
    
    <figure>
        <img src="images/monatery1.jpg" alt="Prayer bells">
        <figcaption>ကျွန်းတိုင်များဖြင့် ဆောက်လုပ်ထားသော ကျောင်းတော်ကြီး</figcaption>
    </figure>

    <figure>
        <img src="images/monastery2.jpg" alt="Corridor inside Pagoda">
        <figcaption>ကျောင်းတော်ကြီး၏အပြင်ပိုင်းပန်းပုလက်ရာ</figcaption>
    </figure>

    <figure>
        <img src="images/monasstery3.jpg" alt="Eastern Approach Market">
        <figcaption>ပြောင်မြောက်လှသောဗိသုကာလက်ရာ</figcaption>
    </figure>

    <figure>
        <img src="images/monastery4.jpg" alt="Prayer bells">
        <figcaption>သစ်သားပန်းပုရုပ်ကြွများဖြင့် ပြည့်နှက်နေသော ကျောင်းတော်ကြီး၏ စင်္ကြံဧရိယာ</figcaption>
    </figure>
    
     <figure>
        <img src="images/monastery5.jpg" alt="Prayer bells">
        <figcaption>မြန်မာ့ရိုးရာ သစ်သားပန်းပု ပညာရပ်ဖြင့် ထုလုပ်ထားသော ရှေးဟောင်းဗိသုကာလက်ရာ</figcaption>
    </figure>
    
    <figure>
        <img src="images/monatery6.jpg" alt="Prayer bells">
        <figcaption>လက်ရာမြောက်လှသော ဟင်္သာ ရုပ်တု</figcaption>
    </figure>
    
    <figure>
        <img src="images/monastery7.jpg" alt="Prayer bells">
        <figcaption>စင်္ကြံ</figcaption>
    </figure>

</div>
    </div>

    <!-- PLACE 5 -->
    <div class="place-card">
        <div class="place-text">
            <h2>မန္တလေး နန်းတော်</h2>
            <p>
                မန္တလေးနန်းတော်သည် ကုန်းဘောင်မင်းဆက်၏ နောက်ဆုံးနန်းတော်ဖြစ်ပြီး
                မင်းတုန်းမင်းလက်ထက်တွင် တည်ဆောက်ခဲ့သည်။
                မြို့ရိုးနှင့် ကျုံးများဖြင့် ဝန်းရံထားသော သမိုင်းဝင် နန်းတော်ကြီးဖြစ်သည်။နန်းတော်သည် ဝင်းအလယ်ဗဟိုတွင် တည်ရှိပြီး အရှေ့ဘက်ကို မျက်နှာမူထားသည်။ နန်းဆောင်အားလုံးမှာ တစ်ထပ်သာဖြစ်ကြသည်။
            </p>
        </div>
        <div class="icon-box">
        <i class="fa-solid fa-circle-arrow-right gallery-toggle-icon" onclick="toggleGallery(this)" title="ပိုမိုကြည့်ရှုရန်"></i>
    </div>
        <div class="place-image">
            <img src="images/palace.jpg">
        </div>
         <!-- HIDDEN GALLERY -->
<div class="place-gallery">

    <figure>
        <img src="images/Nandaw.jpg" alt="Devotees before the image">
        <figcaption>မြနန်းစံကျော် ရွှေနန်းတော်ကြီး၏မြင်ကွင်း</figcaption>
    </figure>
    
    <figure>
        <img src="images/Nandaw1.jpg" alt="Prayer bells">
        <figcaption>နန်းမြို့ရိုး</figcaption>
    </figure>

    <figure>
        <img src="images/Nandaw2.jpg" alt="Corridor inside Pagoda">
        <figcaption>မန္တလေးနန်းတော်</figcaption>
    </figure>

</div>
    </div>

    <!-- PLACE 6 -->
    <div class="place-card">
        <div class="place-text">
            <h2>ဦးပိန် တံတား</h2>
            <p>
                အမရပူရမြို့နယ်အတွင်းရှိ ဆက်သွယ် တည်ဆောက်ထားသည့် ဦးပိန်တံတားသည် မြန်မာနှင့် ကမ္ဘာကျော် ရှုခင်းကောင်းတစ်ခု၊ အပန်းဖြေလေ့လာရန်နေရာတစ်ခုအဖြစ် ကျော်ကြားပေသည်။ ဦးပိန်တံတားသည် ၁.၂-ကီလိုမီတာ (၀.၇၅-မိုင်) ရှည်လျား၍ ကမ္ဘာပေါ်တွင် အရှည်ဆုံး ကျွန်းသား တံတားဖြစ်သည်။
                နေဝင်ချိန် ရှုခင်းအလွန်လှပသော နေရာဖြစ်သည်။
            </p>
        </div>
        <div class="icon-box">
        <i class="fa-solid fa-circle-arrow-right gallery-toggle-icon" onclick="toggleGallery(this)" title="ပိုမိုကြည့်ရှုရန်"></i>
    </div>
        <div class="place-image">
            <img src="images/ubein.jpg">
        </div>
         <!-- HIDDEN GALLERY -->
<div class="place-gallery">

    <figure>
        <img src="images/bridge.jpg" alt="Devotees before the image">
        <figcaption>ဦးပိန်တံတားပေါ်မှ ဆည်းဆာနှင့် ဈေးသည်</figcaption>
    </figure>
    
    <figure>
        <img src="images/bridge1.jpg" alt="Prayer bells">
        <figcaption>တောင်သမန်အင်းနှင့် ဦးပိန်တံတား၏ လှပသောမြင်ကွင်း</figcaption>
    </figure>

    <figure>
        <img src="images/bridge2.jpg" alt="Corridor inside Pagoda">
        <figcaption>ဦးပိန်တံတားပေါ်မှ နေဝင်ဆည်းဆာအလှ</figcaption>
    </figure>

</div>
    </div>

    <!-- PLACE 7 -->
    <div class="place-card">
        <div class="place-text">
            <h2>မန္တလေး တောင်</h2>
            <p>
                မန္တလေးတောင်သည် မန္တလေးမြို့၏ မြောက်ဘက်တွင် တည်ရှိသည်။ ပင်လယ်ရေမျက်နှာပြင်မှ ၂၃၀ မီတာ မြင့်သည်။ မန္တလေးတောင်ထိပ်သည် ပင်လယ်ပြင်မှအထက် ပေပေါင်း ၇၇၆-ပေ၊ တောင်ခြေမြေပြင်မှ ပေပေါင်း ၅၀၀ ကျော်မြင့်သည်။ စေတီပုထိုးပေါင်း များစွာ တည်ထားသည်။ မန္တလေးတောင်သည် မန္တလေးမြိုကို အပေါ်မှ စီးပိုးအုပ်မိုးထားသကဲ့သို ရှိပေရာ၊ မန္တလေးတောင်ပေါ်မှနေ၍ ကြည့်သော်နန်းမြိုရိုး၊ ကျုံးနှင့်တစ်ကွ မန္တလေးမြို၏ ရှုခင်းကို ကောင်းမွန်စွာမြင်တွေ့ရပေသည်။ တောင်ထိပ်တွင် ဆုတောင်းပြည့် မြတ်စွာဘုရား တည်ရှိသည်။
            </p>
        </div>
        <div class="icon-box">
        <i class="fa-solid fa-circle-arrow-right gallery-toggle-icon" onclick="toggleGallery(this)" title="ပိုမိုကြည့်ရှုရန်"></i>
    </div>
        <div class="place-image">
            <img src="images/mandalayhill.jpg">
        </div>
         <!-- HIDDEN GALLERY -->
<div class="place-gallery">

    <figure>
        <img src="images/hill.jpg" alt="Devotees before the image">
        <figcaption>မန္တလေးတောင်ပေါ်ရှိ နံနက်ခင်း</figcaption>
    </figure>
    
    <figure>
        <img src="images/hill1.jpg" alt="Prayer bells">
        <figcaption>မန္တလေးတောင် ဆောင်းတန်းနံနက်ခင်း မြင်ကွင်း</figcaption>
    </figure>

    <figure>
        <img src="images/hill2.jpg" alt="Corridor inside Pagoda">
        <figcaption>မန္တလေးတောင်ခြေရှိ အစောင့်ခြင်္သေ့ကြီးနှစ်ကောင်</figcaption>
    </figure>

</div>

    </div>

</div>
<script>
function toggleGallery(icon) {
    // 1. Find the parent card
    const card = icon.closest(".place-card");
    const gallery = card.querySelector(".place-gallery");

    // 2. Safety check: If no gallery exists, don't do anything
    if (!gallery) return;

    // 3. Toggle the 'gallery-open' class on the card
    const isOpen = card.classList.toggle("gallery-open");

    // 4. Toggle the 'show' class on the gallery
    gallery.classList.toggle("show");

    // 5. Change the arrow direction based on state
    if (isOpen) {
        icon.classList.replace("fa-circle-arrow-right", "fa-circle-arrow-left");
    } else {
        icon.classList.replace("fa-circle-arrow-left", "fa-circle-arrow-right");
    }
}
</script>

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
