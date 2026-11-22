<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Contact Us | Explore Mandalay</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">    
<style>
/* USING YOUR SHARED VARIABLES */
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
.logo {
    color: white;
    font-size: 24px;
    font-weight: bold;
}

/* CONTACT HERO (Matches your Culture Hero style) */
.contact-hero {
    height: 50vh;
    color: #4a3728;
    background: linear-gradient(180deg, #e6be8a 0%, #a8ab5b 100%);
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;
}
.hero-overlay h1 { font-size: 54px; margin-bottom: 10px; }

/* CONTACT CONTENT CARD */
.contact-wrapper {
    max-width: 1100px;
    margin: -100px auto 80px; /* Pulls the card onto the hero */
    display: flex;
    background: white;
    border-radius: 20px;
    overflow: hidden;
    box-shadow: 0 20px 40px rgba(0,0,0,0.15);
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


/* LEFT SIDE: PROJECT INFO */
.info-sidebar {
    flex: 1;
    background: var(--deep-charcoal);
    color: white;
    padding: 50px;
}
.info-sidebar h2 { color: var(--mandalay-gold); margin-bottom: 30px; }
.info-box { display: flex; align-items: flex-start; gap: 15px; margin-bottom: 25px; }
.info-box i { color: var(--mandalay-accent); font-size: 20px; margin-top: 5px; }
.info-box p { margin: 0; line-height: 1.6; opacity: 0.9; }

/* RIGHT SIDE: FORM */
.form-area {
    flex: 1.5;
    padding: 50px;
}
.form-area h2 { color: var(--deep-charcoal); margin-bottom: 20px; font-family: 'Pyidaungsu', sans-serif; }

.input-field {
    width: 100%;
    padding: 15px;
    margin-bottom: 20px;
    border: 1px solid #ddd;
    border-radius: 10px;
    background: #fdfdfd;
    box-sizing: border-box; /* Crucial for alignment */
}
.input-field:focus { outline: none; border-color: var(--mandalay-gold); }

.submit-btn {
    background: linear-gradient(to right, var(--mandalay-gold), var(--mandalay-gold-dark));
    color: white;
    border: none;
    padding: 18px;
    width: 100%;
    border-radius: 10px;
    font-size: 18px;
    font-weight: bold;
    cursor: pointer;
    transition: 0.3s;
    letter-spacing: 1px;
    text-transform: uppercase;
    font-size: 17px; /* Keeping it readable but professional */
}
.submit-btn:hover { transform: translateY(-3px); box-shadow: 0 10px 20px rgba(0,0,0,0.1); }

</style>
</head>
<body>

<!-- NAV BAR -->
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

<section class="contact-hero">
    <div class="hero-overlay">
        <h1>ဆက်သွယ်ရန်</h1>
    </div>
</section>

<div class="contact-wrapper">
    <div class="info-sidebar">
        <h2>Project Info</h2>
        <div class="info-box">
            <i class="fa-solid fa-map-location-dot"></i>
            <div>
                <strong>Location</strong>
                <p>Mandalay Technology University, Myanmar</p>
            </div>
        </div>
        <div class="info-box">
            <i class="fa-solid fa-code"></i>
            <div>
                <strong>Technology Stack</strong>
                <p>Java Server Pages (JSP), CSS, JavaScript, FontAwesome, Tomcat, MySQL</p>
            </div>
        </div>
        <div class="info-box">
            <i class="fa-solid fa-envelope"></i>
            <div>
                <strong>Email Us</strong>
                <p>exploremandalay@gmail.com</p>
            </div>
        </div>
    </div>

    <div class="form-area">
        <h2>✉ အကြံပြုချက်ပေးပို့ရန်</h2>
     <%
		String error = (String) request.getAttribute("error");
		if (error != null) {
	%>
    <div class="alert alert-danger text-center">
        <%= error %>
    </div>
<%
}
%>

<form id="contact-form" action="#" method="post" onsubmit="return false;">
    <input type="text" name="userName" class="input-field" placeholder="Your Name...✨" required>
    <input type="email" name="email" class="input-field" placeholder="Your Email Address...📬" required pattern="^[a-zA-Z0-9._%+-]+@gmail\.com$" title="Only Gmail addresses are allowed (example@gmail.com)">
    <textarea name="userMessage" class="input-field" placeholder="Your Message...💬" rows="6" required></textarea>
    <button type="submit" class="submit-btn">Send Message</button>
</form>
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
<script src="https://cdn.jsdelivr.net/npm/@emailjs/browser@4/dist/email.min.js"></script>

<script>
    // Wait until the page is ready
    document.addEventListener("DOMContentLoaded", function () {

        const contactForm = document.getElementById("contact-form");
        const submitButton = contactForm.querySelector(".submit-btn");

        // Check whether EmailJS loaded
        if (typeof emailjs === "undefined") {
            alert("EmailJS failed to load. Please refresh the page.");
            return;
        }

        // Initialize EmailJS
        emailjs.init({
            publicKey: "lkndoKfGwitZQepv7"
        });

        contactForm.addEventListener("submit", function(event) {
            event.preventDefault();

            const email = contactForm.querySelector('[name="email"]').value.trim();

            if (!/^[a-zA-Z0-9._%+-]+@gmail\.com$/.test(email)) {
                alert("Please enter a valid Gmail address.");
                return;
            }

            submitButton.disabled = true;
            submitButton.textContent = "Sending...";

            emailjs.sendForm(
                "service_dyny6bt",
                "template_p7891a4",
                contactForm
            )
            .then(function() {
                alert("Your message has been sent successfully!");
                contactForm.reset();
            })
            .catch(function(error) {
                console.error("EmailJS Error:", error);
                alert("Failed to send your message. Please try again.");
            })
            .finally(function() {
                submitButton.disabled = false;
                submitButton.textContent = "Send Message";
            });
        });
    });
</script>


</body>
</html>