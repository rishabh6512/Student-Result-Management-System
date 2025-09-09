# 🎓 Student Result Management System 📊

A **simple** and **efficient** web application to manage student records and results with ease! Built using **HTML**, **CSS**, **Bootstrap**, **JavaScript**, **PHP**, and **MySQL** — perfect for learning or small projects. 🚀

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
