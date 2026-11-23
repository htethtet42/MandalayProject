# 🏛️ Mandalay Project – Discover the Golden City of Myanmar

A Java Web Application that introduces the history, culture, attractions, and beauty of Mandalay, Myanmar. The project provides visitors with an interactive way to explore important places, cultural traditions, and information about the city.

🌐 **Live Website:** https://mandalayproject.dockhosting.cloud

---

## 📖 About the Project

Mandalay Project is a web-based application developed using Java JSP and Jakarta Servlets. It aims to promote Mandalay's historical landmarks, cultural heritage, and tourist attractions through a simple and user-friendly website.

The application includes informational pages, visual content, and a contact form that allows visitors to send messages directly to the project team.

## ✨ Features

- **Home Page:** Welcome visitors with an introduction to Mandalay.
- **Mandalay Map:** Explore geographical information about the city.
- **Places to Visit:** Discover popular tourist attractions.
- **Culture:** Learn about Mandalay's traditions and cultural heritage.
- **Earthquake Information:** Learn about significant earthquake events.
- **Contact Form:** Send messages directly to the project team through EmailJS.
- **Responsive Design:** Access the website on desktop and mobile devices.

## 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| Java 17 | Backend programming |
| JSP | Dynamic web pages |
| Jakarta Servlets | Server-side request handling |
| HTML5 | Website structure |
| CSS3 | Website styling and responsive layout |
| JavaScript | Client-side interactions |
| MySQL | Database technology used in the project |
| EmailJS | Contact form email delivery |
| Apache Tomcat 10.1 | Java web application server |
| Docker | Application containerization |
| Git & GitHub | Version control and source code management |
| DockHosting | Website deployment |
| cron-job.org | Scheduled website availability checks |

## 📂 Project Structure

```text
MandalayProject/
│
├── src/
│   └── main/
│       └── webapp/
│           ├── WEB-INF/
│           │   └── web.xml
│           │
│           ├── images/
│           ├── home.jsp
│           ├── about.jsp
│           ├── places.jsp
│           ├── culture.jsp
│           ├── earthquake.jsp
            ├── destroyed_buildings.jsp
│           ├── contact.jsp
            ├── style.css
│           └── viewContact.jsp
│
├── MandalayProject.war
├── Dockerfile
└── README.md
```

*Note: The structure above highlights the main project files. Additional Java classes, libraries, and resources may also be included.*

## 🚀 Deployment

The application is deployed using Docker and Apache Tomcat.

**Deployment configuration:**

- Java Runtime: JDK 17
- Application Server: Apache Tomcat 10.1
- Packaging: WAR (Web Application Archive)
- Hosting: DockHosting
- Source Code: GitHub

### Dockerfile

```dockerfile
FROM tomcat:10.1-jdk17

RUN rm -rf /usr/local/tomcat/webapps/*

COPY MandalayProject.war /usr/local/tomcat/webapps/ROOT.war

ENV PORT 8080

EXPOSE 8080

CMD ["catalina.sh", "run"]
```
## 🔄 Free Hosting & Keep-Alive Configuration

### Hosting Limitation

MandalayProject is hosted on DockHosting's free hosting plan.

According to DockHosting's hosting policy, free applications automatically go to sleep after one hour without visitors.

When someone visits a sleeping application, the server needs a few seconds to wake up. During this process, visitors may see a **"Waking up"** page.

### Free Keep-Alive Attempt Using cron-job.org

To reduce inactivity and periodically check website availability, an external scheduling service called [cron-job.org](https://cron-job.org/) is configured.

**Configuration:**

| Setting | Value |
|---|---|
| Service | cron-job.org |
| Job Name | MandalayProjectKeepAlive |
| Target URL | [https://mandalayproject.dockhosting.cloud/](https://mandalayproject.dockhosting.cloud/) |
| HTTP Method | GET |
| Execution Interval | Every 15 minutes |
| Job Status | Enabled |
| Cost | Free |

### How It Works

1. cron-job.org sends an automated HTTP GET request to the deployed website every 15 minutes.
2. DockHosting receives the request.
3. cron-job.org records the HTTP response and execution status.
4. Successful requests indicate that the website responded to the automated check.

### Execution Result

The first scheduled execution was successful.

| Metric | Result |
|---|---|
| HTTP Response | 200 OK |
| Request Duration | 506 ms |
| Execution Status | Successful |

**Important Note:**

A successful HTTP 200 response confirms that the website responds to the automated request. However, DockHosting does not explicitly guarantee that automated monitoring requests count as user visits or prevent the free application from sleeping.

Therefore, this configuration is a free, best-effort availability check and keep-alive attempt, not a guaranteed 24/7 uptime solution.

No changes to the deployed JSP, Java Servlet, Docker, or database configuration are required for this external monitoring setup.

**Monitoring Service:** [https://cron-job.org/](https://cron-job.org/)
## 📬 Contact Form

The contact form uses EmailJS to deliver visitor messages directly to the configured email address.

Visitors can submit:
- Name
- Email address
- Message

A success notification is displayed after successful submission.

## 💻 Local Development

To run the project locally:

1. Install JDK 17.
2. Install Apache Tomcat 10.1.
3. Clone the repository:

```bash
git clone https://github.com/htethtet42/MandalayProject.git
```

4. Open the project in your preferred Java IDE or code editor.
5. Configure the project for Apache Tomcat.
6. Build or package the application as a WAR file.
7. Deploy the WAR file to Tomcat's `webapps` directory.
8. Start Tomcat and visit:

```text
http://localhost:8080/
```

## 👥 Project Purpose

This project was developed as an educational Java Web Application to demonstrate practical web development skills, server-side programming, website deployment, and the presentation of local tourism and cultural information.

---

**Made with ❤️ to introduce the beauty of Mandalay, Myanmar.**
