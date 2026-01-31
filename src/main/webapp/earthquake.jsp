<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mandalay | 2025 Earthquake</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<style>
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    font-family: 'Pyidaungsu', sans-serif;
}
.eq-container {
    max-width: 1100px;
    margin: 60px auto;
    padding: 20px;
}

/* TITLE */
.eq-title {
    text-align: center;
    font-size: 36px;
    margin-bottom: 10px;
    color: #222;
}

.eq-subtitle {
    text-align: center;
    font-size: 18px;
    color: #555;
    margin-bottom: 40px;
}

/* INFO GRID */
.eq-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: 25px;
}
.click-hint {
    display: block;
    margin-top: 15px;
    font-size: 14px;
    color: #C5A02B;
    font-weight: bold;
}
.card-link {
    text-decoration: none;
    color: inherit; /* This makes the text inside the link use the default card color */
    display: block;
}
.card-link:hover .eq-card {
    transform: translateY(-10px);
    box-shadow: 0 12px 30px rgba(0,0,0,0.15);
    border-bottom: 4px solid #C5A02B; /* Gold line appears on hover */
    background-color: #fcfaf2;
}

/* CARD */
.eq-card {
    background: #fff;
    border-radius: 12px;
    padding: 25px;
    box-shadow: 0 8px 25px rgba(0,0,0,0.08);
    transition: transform 0.3s;
}

.eq-card:hover {
    transform: translateY(-5px);
}

.eq-card i {
    font-size: 34px;
    color: #ded74b;
    margin-bottom: 15px;
}

.eq-card h3 {
    font-size: 22px;
    margin-bottom: 12px;
}

.eq-card p {
    font-size: 16px;
    line-height: 1.7;
    color: #444;
}

/* SAFETY SECTION */
.eq-safety {
    margin-top: 60px;
    background: #f8f8f8;
    padding: 35px;
    border-radius: 14px;
}

.eq-safety h2 {
    text-align: center;
    margin-bottom: 25px;
}

.eq-safety ul {
    list-style: none;
    padding-left: 0;
}

.eq-safety li {
    font-size: 16px;
    margin-bottom: 12px;
}

.eq-safety li i {
    color: #d9534f;
    margin-right: 10px;
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
<div class="eq-container">

    <h1 class="eq-title">၂၀၂၅ ခုနှစ် မန္တလေး ငလျင်ကြီး</h1>
    <p class="eq-subtitle">
        မန္တလေးမြို့၏ သဘာဝဘေးအန္တရာယ်များအနက် အရေးပါဆုံး ဖြစ်ရပ်တစ်ခု
    </p>

    <!-- INFO CARDS -->
    <div class="eq-grid">

        <div class="eq-card">
            <i class="fa-solid fa-earth-asia"></i>
            <h3>ငလျင် ဖြစ်ပွားရခြင်း</h3>
            <p>
            	မန္တလေးမြို့သည် စစ်ကိုင်းအလျားလိုက် အက်ကြောင်းအနီးတွင် တည်ရှိသောကြောင့်
                ငလျင်လှုပ်ခတ်မှု ဖြစ်ပွားခဲ့သည်။
                ၂၀၂၅ ခုနှစ် မတ်လ ၂၈ ရက်နေ့ ဒေသစံတော်ချိန် မွန်းလွဲ ၁၂ နာရီ ၅၀ မိနစ်အချိန်ခန့်တွင် ရစ်ခ်ျတာစကေး ၇ ဒသမ ၇ အဆင့်ရှိ ငလျင်တစ်ခုသည် မြန်မာနိုင်ငံ၏ ဒုတိယအကြီးဆုံးမြို့ဖြစ်သည့် မန္တလေး နှင့်အနီးတွင် ဗဟိုပြု၍ လှုပ်ခတ်ခဲ့သည်။ ကနဦးငလျင်လှုပ်ပြီးနောက် ဆယ့်တစ်မိနစ်ခန့်တွင် ပြင်းအား ရစ်ခ်ျတာစကေး ၆.၇ အဆင့်ရှိ နောက်ဆက်တွဲငလျင် ထပ်မံလှုပ်ခတ်သွားခဲ့သည်။
            </p>
        </div>

	
        <div class="eq-card">
            <i class="fa-solid fa-city"></i>
            <h3>သက်ရောက်မှုများ</h3>
            <p>
            	မြေငလျင်ဒဏ်ကြောင့် မြန်မာတွင် အနည်းဆုံး လူ ၅၃၅၀ ဦးနှင့် ထိုင်းတွင် ၅၁ ဦးနှင့် ဗီယက်နမ်နိုင်ငံတွင် (၁)ဦး အသက်ဆုံးရှုံးခဲ့သည်။လူပေါင်း ၁၁,၄၀၀ ကျော် ထိခိုက်ဒဏ်ရာရခဲ့သည်။
                အချို့သော အဆောက်အဦးများ ထိခိုက်ပျက်စီးခဲ့ပြီး
                လမ်းပန်းဆက်သွယ်ရေးနှင့် လူမှုဘဝများတွင် ယာယီအခက်အခဲများ ဖြစ်ပေါ်ခဲ့ပါသည်။
            </p>
            <span class="click-hint"><a href="destroyed_buildings.jsp" class="card-link">ဓါတ်ပုံများကြည့်ရန် နှိပ်ပါ →</a></span>
        </div>  

        <div class="eq-card">
            <i class="fa-solid fa-people-group"></i>
            <h3>ပြည်သူ့ တုံ့ပြန်မှု</h3>
            <p>
                ဒေသခံပြည်သူများ၊ အစိုးရအဖွဲ့အစည်းများနှင့် ကူညီရေးအဖွဲ့များက
                အချင်းချင်း ပူးပေါင်းကာ ကယ်ဆယ်ရေးနှင့် ကူညီရေးလုပ်ငန်းများကို ဆောင်ရွက်ခဲ့ပါသည်။
            </p>
        </div>

    </div>

    <!-- SAFETY -->
    <div class="eq-safety">
        <h2>ငလျင်အန္တရာယ်မှ ကာကွယ်နည်းများ</h2>
        <ul>
        	<li><i class="fa-solid fa-triangle-exclamation"></i> အိမ်ထဲတွင်ရှိနေပါက "ဝပ်၊ ခို၊ ကိုင်" (Drop, Cover, Hold on) နည်းလမ်းကို သုံးပါ။</li>
            <li><i class="fa-solid fa-triangle-exclamation"></i> ငလျင်လှုပ်နေစဉ် ဓာတ်လှေကား လုံးဝမစီးပါနှင့်။</li>
            <li><i class="fa-solid fa-triangle-exclamation"></i> လျှပ်စစ်မီးနှင့် ဓာတ်ငွေ့များကို ပိတ်ထားပါ။</li>
            <li><i class="fa-solid fa-triangle-exclamation"></i> အဆောက်အအုံများ၊ သစ်ပင်များ၊ ဓာတ်တိုင်များနှင့် ဝေးရာ ကွင်းပြင်သို့ သွားပါ။</li>
            <li><i class="fa-solid fa-triangle-exclamation"></i> အရေးပေါ်အိတ် (Emergency Kit) ပြင်ဆင်ထားပါ။</li>
        </ul>
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