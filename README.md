# 🎓 Student Result Management System 📊

A **simple** and **efficient** web application to manage student records and results with ease! Built using **HTML**, **CSS**, **Bootstrap**, **JavaScript**, **PHP**, and **MySQL** — perfect for learning or small projects. 🚀

---

## 🚀 Demo

Check out the live demo here:  
➡ [https://result-management-system.zya.me/](https://result-management-system.zya.me/)

> *(If you’re running locally, visit http://localhost:8000 or http://localhost/student-result-management-system as explained below.)*

---

## ✨ Features
✅ Admin panel to **add**, **edit**, and **delete** student records and results  
✅ Student result lookup by **roll number / registration ID** and **email**  
✅ 📱 Fully responsive UI powered by **Bootstrap**  
✅ 🔒 Basic authentication for admin with default credentials  
✅ ✅ Server-side logic handled by **PHP** with **MySQL/MariaDB**

---

## 🛠 Tech Stack

**Frontend:**  
- HTML5 📄  
- CSS3 🎨  
- Bootstrap ⚙️  
- JavaScript 💡

**Backend:**  
- PHP 7+ 🐘

**Database:**  
- MySQL / MariaDB 🗄️

---

## 📦 Prerequisites

Make sure you have these installed before you start:

✔ PHP 7.0 or newer  
✔ MySQL or MariaDB  
✔ Apache/Nginx or a local stack like XAMPP / MAMP / WampServer  
✔ Git (optional but recommended)

---

## 🚀 Quick Setup Guide

### 1️⃣ Clone the repository
```bash
git clone https://github.com/rishabh6512/Student-Result-Management-System.git
cd Student-Result-Management-System
````

### 2️⃣ Setup the database

Create a database, e.g., `student_results`, and import the SQL schema:

**If an SQL file is provided:**

```bash
mysql -u your_db_user -p student_results < path/to/database.sql
```

**If no SQL file is provided, create tables like:**

```sql
CREATE TABLE students (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  roll_no VARCHAR(50) UNIQUE NOT NULL,
  email VARCHAR(255),
  class VARCHAR(50),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE results (
  id INT AUTO_INCREMENT PRIMARY KEY,
  student_id INT NOT NULL,
  subject VARCHAR(255) NOT NULL,
  marks INT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE CASCADE
);
```

### 3️⃣ Configure the database connection

Rename or copy the config file if it exists and update your database credentials:

```php
<?php
// config.php example
$db_host = 'localhost';
$db_name = 'student_results';
$db_user = 'root';
$db_pass = '';
$conn = new mysqli($db_host, $db_user, $db_pass, $db_name);
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
?>
```

### 4️⃣ Run the project

Place it in your web server’s root folder or use PHP’s built-in server:

```bash
php -S localhost:8000
````

Then visit ➡️ [http://localhost:8000](http://localhost:8000)

---

#### 🪟 **For Windows users (XAMPP)**

✔ Copy the project folder to `C:\xampp\htdocs\`

✔ Open your browser and go to:
➡ [http://localhost/student-result-management-system](http://localhost/student-result-management-system)

---

## 🔐 Default Admin Credentials

**Username:** `manager_02019`
**Password:** `02019`

👉 Check the database if these differ in your copy.

---

## Screenshots

**Login Page**

<img width="2764" height="1467" alt="Screenshot_20250909_150548" src="https://github.com/user-attachments/assets/e2de4d92-2d59-446d-9ac3-8a6dd2e5ae04" />

**Dashboard**

<img width="2773" height="1596" alt="Screenshot_20250909_150612" src="https://github.com/user-attachments/assets/2cc64e8f-53a8-4693-b974-0f515fc7b30f" />

**Manage Students**

<img width="2771" height="1590" alt="Screenshot_20250909_150651" src="https://github.com/user-attachments/assets/e2ef2460-04d7-45ea-a619-99045bb4efbc" />

**Manage Subjects**

<img width="2760" height="1596" alt="Screenshot_20250909_150707" src="https://github.com/user-attachments/assets/62f10338-86e7-4dc4-a9e7-3f3279b1ab82" />

**Manage Classes**

<img width="2763" height="1589" alt="Screenshot_20250909_150721" src="https://github.com/user-attachments/assets/d6345169-68de-46f2-8686-de413c32cc04" />

**Result**

<img width="2769" height="1598" alt="Screenshot_20250909_150804" src="https://github.com/user-attachments/assets/6efa6d31-6357-4b17-b3dd-255737dfb362" />

---

## 📖 How to Use

**Admin:**

* Log in ➡️ manage students and results easily.

**Students:**

* Enter registration number and email ➡️ view results quickly!

---

## ⚙ Troubleshooting

❌ **Blank pages / 500 errors**
➡ Enable PHP error reporting or check server logs.

❌ **Database connection failed**
➡ Verify credentials and ensure MySQL is running.

❌ **Missing SQL file**
➡ Create tables using the sample SQL above.

❌ **Styling issues**
➡ Confirm asset paths in `/css`, `/js`, `/assets`.

❌ **Admin login errors**
➡ Check the database `users` table or seed data.

---
