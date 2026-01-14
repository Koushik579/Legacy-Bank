# 🏦 Legacy Bank – Java Web Application

Legacy Bank is a Java-based **bank management web application** developed using **JSP, Servlets, JDBC**, and modern frontend technologies.  
The project focuses on implementing core banking workflows such as user authentication, account handling, and database interaction using a traditional Java web stack.

---

## 🚧 Project Status
**Work in Progress**

Core functionality is implemented.  
More banking features, validations, and UI improvements are planned.

---

## ✨ Features
- 🔐 Secure user signup and login
- 🔑 Password hashing using BCrypt
- 🧾 JSP-based dynamic pages
- 🗄️ Database connectivity using JDBC
- 🧠 Servlet-based request handling
- 📊 User account dashboard
- 🎨 Styled UI using CSS
- ⚙️ Client-side scripting with JavaScript
- 🔄 Dynamic behavior using jQuery & AngularJS

---

## 🛠 Tech Stack

### Frontend
- HTML5 
- CSS3 
- JavaScript 
- jQuery 
- AngularJS 

### Backend
- Java 
- JSP (Java Server Pages) 
- Servlets 
- JDBC 

### Database
- PostgreSQL 
- MySQL (connector included for flexibility)

### Security
- BCrypt (password encryption)

### Tools
- NetBeans IDE 
- Apache Tomcat 
- Git & GitHub 

---

## 🚀 How to Run the Project

### Prerequisites
- Java JDK 8 or above 
- Apache Tomcat 
- PostgreSQL (or MySQL) 
- NetBeans IDE (recommended)

### Steps
1. Clone the repository
2. Open the project in **NetBeans**
3. Configure database credentials in:

src/java/com/koushik/jdbc/JdbcConnection.java

4. Ensure the database server is running
5. Run the project on Tomcat
6. Open in browser:

http://localhost:8080/LegacyBank/


---

## 📁 Project Structure

Legacy Bank/
├─ src/java/
│ └─ com/koushik/
│ ├─ jdbc/
│ │ └─ JdbcConnection.java
│ └─ servlet/
│ ├─ confirmation/
│ │ ├─ loginConfirm.java
│ │ ├─ logoutConfirm.java
│ │ └─ signupConfirm.java
│ └─ updatedb/
│ └─ Updatedb.java
├─ web/
│ ├─ index.jsp
│ ├─ account.jsp
│ ├─ Confirmsignup.jsp
│ ├─ css/
│ ├─ js/
│ ├─ images/
│ └─ WEB-INF/
│ └─ web.xml
├─ build/
├─ nbproject/
├─ README.md
└─ build.xml


---

## 🎯 Learning Objectives
- Build Java web applications using JSP & Servlets
- Implement authentication systems securely
- Work with relational databases using JDBC
- Integrate frontend technologies with backend Java
- Understand MVC-style architecture
- Practice full-stack Java development

---

## 🔮 Planned Enhancements
- 💳 Account balance & transaction handling
- 🧾 Transaction history
- 🔁 Fund transfers
- 🛡️ Improved session management
- ⚠️ Better exception handling & logging
- 📱 UI/UX improvements
- 🔐 Role-based access control

---

## 👤 Author
**Koushik Karmakar** 
B.Tech Civil Engineering Student 
Learning **Java Backend Development**, Databases & Full-Stack Web Applications

---

## 📌 Notes
This project is part of my learning journey in Java web development. 
The codebase will continue to evolve as new concepts and best practices are applied.

