<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Damage Gallery | 2025 Earthquake</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<style>
    * { box-sizing: border-box; margin: 0; padding: 0; font-family: 'Pyidaungsu', sans-serif; }
    body { background-color: #f4f4f4; }
    
    .gallery-container { max-width: 1200px; margin: 50px auto; padding: 20px; }
    .header-box { text-align: center; margin-bottom: 40px; }
    .back-btn { display: inline-block; margin-bottom: 20px; color: #C5A02B; text-decoration: none; font-weight: bold; }

    /* Gallery Grid */
    .gallery-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
        gap: 20px;
    }

    .gallery-item {
        background: #fff;
        border-radius: 10px;
        overflow: hidden;
        box-shadow: 0 4px 15px rgba(0,0,0,0.1);
    }

    .gallery-item img {
        width: 100%;
        height: 250px;
        object-fit: cover;
        display: block;
        transition: transform 0.5s;
    }

    .gallery-item:hover img { transform: scale(1.1); }

    .img-desc { padding: 15px; font-size: 14px; color: #555; text-align: center; }

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
    <div class="gallery-container">
        <a href="earthquake.jsp" class="back-btn"><i class="fa-solid fa-arrow-left"></i> ရှေ့စာမျက်နှာသို့ ပြန်သွားရန်</a>
        
        <div class="header-box">
            <h1>ပျက်စီးဆုံးရှုံးမှု မှတ်တမ်းဓါတ်ပုံများ</h1>
            <p>၂၀၂၅ မန္တလေးငလျင်ကြောင့် ပျက်စီးသွားသော သမိုင်းဝင် အမွေအနှစ် ၊ အဆောက်အဦးများ ၊ လမ်းတံတားများ </p>
        </div>

        <div class="gallery-grid">
            <div class="gallery-item">
                <img src="images/bg.jpg" alt="Damage">
                <div class="img-desc">ရှေးဟောင်းစေတီပျက်စီးမှု အခြေအနေ</div>
            </div>
            <div class="gallery-item">
                <img src="images/bg1.jpg" alt="Damage">
                <div class="img-desc">သမိုင်းဝင် အမွေအနှစ်များ ပြိုကျပျက်စီးနေသည့် မြင်ကွင်း</div>
            </div>
            <div class="gallery-item">
                <img src="images/bg2.jpg" alt="Damage">
                <div class="img-desc">စေတီပုထိုးများ ထိခိုက်ပျက်စီးမှု မှတ်တမ်း</div>
            </div>
            <div class="gallery-item">
                <img src="images/bg3.jpg" alt="Damage">
                <div class="img-desc">မျက်နှာစာများ အက်ကွဲပျက်စီးမှု</div>
            </div>
            <div class="gallery-item">
                <img src="images/bg4.jpg" alt="Damage">
                <div class="img-desc">နန်းမြို့ရိုး ထိခိုက်ပျက်စီးနေသည့် အခြေအနေ</div>
            </div>
             <div class="gallery-item">
                <img src="images/bg5.jpg" alt="Damage">
                <div class="img-desc">Sky Villa Condo ပြိုကျပျက်စီးသွားသည့် မြင်ကွင်းမှတ်တမ်း</div>
            </div>
             <div class="gallery-item">
                <img src="images/bg6.jpg" alt="Damage">
                <div class="img-desc">စစ်ကိုင်းတံတား ထိခိုက်ပျက်စီးမှု မှတ်တမ်း</div>
            </div>
            <div class="gallery-item">
                <img src="images/bg7.jpg" alt="Damage">
                <div class="img-desc">လမ်းမများ အက်ကွဲပျက်စီးမှု အခြေအနေ</div>
            </div>
            <div class="gallery-item">
                <img src="images/bg8.jpg" alt="Damage">
                <div class="img-desc">အဆောက်အဦများ တစ်ခုလုံး ပြိုကျပျက်စီးသွားသည့် မြင်ကွင်းမှတ်တမ်း</div>
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