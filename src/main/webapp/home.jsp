
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Welcome to Mandalay | ရွှေမန္တလေး</title>

<link rel="stylesheet" href="style.css">
<link rel="stylesheet"
 href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

<style>
/* Preserve the original color identity */
:root {
    --mandalay-gold: #e6b43f;
    --mandalay-dark: #292929;
    --mandalay-white: #ffffff;
}

/* Page */
html {
    scroll-behavior: smooth;
}

body.home-bg {
    margin: 0;
    min-height: 100vh;
    background: url("images/mandalay1.jpg") center center / cover fixed no-repeat;
    color: var(--mandalay-dark);
}

/* Navigation: preserve existing navbar design */
.home-bg .navbar {
    position: relative;
    z-index: 10;
}

/* Hero */
.home-hero {
    min-height: 85vh;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 65px 20px;
    box-sizing: border-box;
}

.home-container {
    width: 100%;
    max-width: 850px;
    padding: 55px 45px;
    text-align: center;
    border: 1px solid rgba(255,255,255,.55);
    border-radius: 25px;
    background: rgba(255,255,255,.62);
    backdrop-filter: blur(13px);
    -webkit-backdrop-filter: blur(13px);
    box-shadow: 0 15px 45px rgba(0,0,0,.18);
    animation: heroAppear 1s ease both;
}

.hero-label {
    display: inline-block;
    color: #79530d;
    background: rgba(230,180,63,.22);
    border: 1px solid rgba(180,130,30,.35);
    padding: 9px 19px;
    border-radius: 30px;
    font-size: 13px;
    font-weight: 700;
    letter-spacing: 2px;
    margin-bottom: 15px;
}

.home-container h1 {
    font-size: clamp(35px, 5vw, 58px);
    margin: 8px 0 18px;
    font-weight: 800;
    color: #292929;
    line-height: 1.2;
}

.home-container p {
    font-size: 18px;
    line-height: 1.9;
    margin: 0 auto 30px;
    max-width: 680px;
}

.home-buttons {
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
    gap: 18px;
}

.home-buttons .btn {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    gap: 9px;
    padding: 15px 30px;
    border-radius: 35px;
    text-decoration: none;
    font-weight: 600;
    transition: .3s ease;
}

.home-buttons .primary {
    background: var(--mandalay-gold);
    color: #292929;
    border: 2px solid var(--mandalay-gold);
}

.home-buttons .secondary {
    background: transparent;
    color: #292929;
    border: 2px solid #292929;
}

.home-buttons .btn:hover {
    transform: translateY(-4px);
    box-shadow: 0 8px 20px rgba(0,0,0,.18);
}

/* Discover section */
.discover-section {
    padding: 85px 7%;
    background: rgba(255,255,255,.94);
    text-align: center;
}

.section-label {
    color: #9a711c;
    font-weight: 700;
    font-size: 13px;
    letter-spacing: 3px;
    text-transform: uppercase;
}

.discover-section h2 {
    font-size: clamp(28px, 4vw, 40px);
    margin: 12px 0;
    color: #292929;
}

.section-description {
    max-width: 650px;
    margin: 0 auto 40px;
    color: #666;
    line-height: 1.8;
}

/* Cards */
.discover-grid {
    display: grid;
    grid-template-columns: repeat(3, minmax(0, 1fr));
    gap: 25px;
    max-width: 1150px;
    margin: 0 auto;
    text-align: left;
}

.discover-card {
    overflow: hidden;
    border-radius: 18px;
    background: white;
    box-shadow: 0 8px 25px rgba(0,0,0,.10);
    transition: transform .35s ease, box-shadow .35s ease;
}

.discover-card:hover {
    transform: translateY(-9px);
    box-shadow: 0 15px 35px rgba(0,0,0,.16);
}

.discover-card img {
    width: 100%;
    height: 230px;
    object-fit: cover;
    display: block;
    transition: transform .5s ease;
}

.discover-card:hover img {
    transform: scale(1.06);
}

.card-content {
    padding: 23px;
}

.card-icon {
    color: #bd8c22;
    font-size: 25px;
    margin-bottom: 12px;
}

.card-content h3 {
    margin: 0 0 12px;
    font-size: 21px;
    color: #292929;
}

.card-content p {
    color: #666;
    font-size: 14px;
    line-height: 1.8;
    min-height: 75px;
}

.card-link {
    display: inline-flex;
    align-items: center;
    gap: 8px;
    color: #916817;
    text-decoration: none;
    font-weight: 700;
    margin-top: 8px;
}

.card-link:hover {
    color: #c28e1f;
}

/* Closing section */
.home-cta {
    padding: 65px 20px;
    text-align: center;
    background: rgba(230,180,63,.94);
}

.home-cta h2 {
    font-size: clamp(25px, 4vw, 35px);
    margin: 0 0 12px;
    color: #292929;
}

.home-cta p {
    line-height: 1.8;
    margin-bottom: 25px;
}

.home-cta a {
    display: inline-block;
    padding: 13px 30px;
    background: #292929;
    color: white;
    border-radius: 30px;
    text-decoration: none;
    transition: .3s;
}

.home-cta a:hover {
    background: #444;
    transform: translateY(-3px);
}

/* Footer */
.home-bg footer {
    margin-top: 0;
}

/* Animation */
@keyframes heroAppear {
    from {
        opacity: 0;
        transform: translateY(25px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

/* Responsive design */
@media (max-width: 800px) {
    .discover-grid {
        grid-template-columns: repeat(2, minmax(0, 1fr));
    }

    .home-container {
        padding: 40px 25px;
    }
}

@media (max-width: 550px) {
    body.home-bg {
        background-attachment: scroll;
    }

    .home-hero {
        min-height: 75vh;
        padding: 40px 15px;
    }

    .home-container {
        padding: 35px 20px;
        border-radius: 18px;
    }

    .home-container p {
        font-size: 15px;
    }

    .home-buttons {
        flex-direction: column;
        align-items: stretch;
    }

    .discover-section {
        padding: 60px 18px;
    }

    .discover-grid {
        grid-template-columns: 1fr;
    }

    .discover-card img {
        height: 220px;
    }
}
</style>
</head>

<body class="home-bg">

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

<!-- HERO SECTION -->
<section class="home-hero">
    <div class="home-container">

        <span class="hero-label">
            THE GOLDEN CITY OF MYANMAR
        </span>

        <h1>Welcome to Mandalay</h1>

        <p>
            မန္တလေးမြို့၏ သမိုင်းဝင်အမွေအနှစ်များ၊
            ယဉ်ကျေးမှုရိုးရာများနှင့် အလှအပများကို
            လေ့လာလိုက်ပါ။
        </p>

        <div class="home-buttons">
            <a href="places.jsp" class="btn primary">
                <i class="fa-solid fa-location-dot"></i>
                Explore Places
            </a>

            <a href="about.jsp" class="btn secondary">
                <i class="fa-solid fa-compass"></i>
                Learn More
            </a>
        </div>

    </div>
</section>

<!-- DISCOVER SECTION -->
<section class="discover-section">

    <span class="section-label">EXPLORE THE CITY</span>

    <h2>Discover Mandalay</h2>

    <p class="section-description">
        Discover the stories, traditions and remarkable places
        that make Mandalay one of Myanmar's most memorable cities.
    </p>

    <div class="discover-grid">

        <!-- Places -->
        <article class="discover-card">
            <img src="images/palace.jpg"
                 alt="Mandalay Royal Palace">

            <div class="card-content">
                <div class="card-icon">
                    <i class="fa-solid fa-landmark"></i>
                </div>

                <h3>Historic Places</h3>

                <p>
                    Explore remarkable landmarks and historical
                    destinations around Mandalay.
                </p>

                <a href="places.jsp" class="card-link">
                    Explore Places
                    <i class="fa-solid fa-arrow-right"></i>
                </a>
            </div>
        </article>

        <!-- Culture -->
        <article class="discover-card">
            <img src="images/thingyan.jpg"
                 alt="Myanmar traditional Thingyan festival">

            <div class="card-content">
                <div class="card-icon">
                    <i class="fa-solid fa-masks-theater"></i>
                </div>

                <h3>Culture & Traditions</h3>

                <p>
                    Discover Myanmar's traditional celebrations,
                    customs and cultural heritage.
                </p>

                <a href="culture.jsp" class="card-link">
                    Discover Culture
                    <i class="fa-solid fa-arrow-right"></i>
                </a>
            </div>
        </article>

        <!-- Heritage -->
        <article class="discover-card">
            <img src="images/mandalayhill.jpg"
                 alt="Mandalay Hill">

            <div class="card-content">
                <div class="card-icon">
                    <i class="fa-solid fa-mountain-sun"></i>
                </div>

                <h3>City & Heritage</h3>

                <p>
                    Learn about Mandalay's history, important events
                    and the city's lasting heritage.
                </p>

                <a href="about.jsp" class="card-link">
                    Learn More
                    <i class="fa-solid fa-arrow-right"></i>
                </a>
            </div>
        </article>

    </div>
</section>

<!-- CLOSING SECTION -->
<section class="home-cta">
    <h2>Experience the Beauty of Mandalay</h2>

    <p>
        Every place has a story. Come and discover the stories of Mandalay.
    </p>

    <a href="places.jsp">
        Start Exploring
        <i class="fa-solid fa-arrow-right"></i>
    </a>
</section>

<!-- FOOTER -->
<footer>
    <p>© 2026 Mandalay Project Java Web Application</p>

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
