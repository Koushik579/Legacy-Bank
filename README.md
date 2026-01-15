# 🏦 Legacy Bank – Java Web Application

Legacy Bank is a Java-based **bank management web application** built using **JSP, Servlets, JDBC**, and modern frontend technologies.  
The project implements core banking workflows including **secure authentication, full CRUD operations, and database-driven account management** using a traditional Java web stack.

---

## 🚧 Project Status
**Active Development**

Core banking functionality including CRUD operations and validation is implemented.  
Further security hardening and feature expansion are planned.

---

## ✨ Features

### 🔐 Authentication & Security
- Secure user signup and login
- Password hashing using **BCrypt**
- Session-based authentication
- Login validation and access control

### 🧾 CRUD Operations
- **Create:** User account creation via signup
- **Read:** Account details displayed on `account.jsp`
- **Update:** Account data modification via update flow
- **Delete:** Account deletion functionality
- JDBC-based database interaction

### 🎨 UI & Client-side
- Improved UI styling with CSS
- Client-side form validation using JavaScript
- Dynamic behavior using **jQuery** and **AngularJS**
- Password visibility toggle & form feedback

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
- MySQL (connector included)

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
│ ├─ Updaterow.java
│ └─ Deleterow.java
├─ web/
│ ├─ index.jsp
│ ├─ signup.jsp
│ ├─ account.jsp
│ ├─ Updatepage.jsp
│ ├─ Deletepage.jsp
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
- Build full-stack Java web applications
- Implement complete CRUD workflows
- Secure user authentication using BCrypt
- Work with relational databases via JDBC
- Apply MVC-style separation
- Improve UI/UX using frontend technologies
- Manage sessions and validations securely

---

## 🔮 Planned Enhancements
- Role-based access control
- Transaction history module
- Input sanitization & stronger validation
- Improved exception handling & logging
- CSRF protection
- UI responsiveness improvements

---

## 👤 Author
**Koushik Karmakar**  
B.Tech Civil Engineering Student  
Learning **Java Backend Development**, Databases & Full-Stack Web Applications

---

## 📌 Notes
This project is part of my hands-on learning journey in Java web development.  
The codebase will continue to evolve as new backend and security concepts are applied.
