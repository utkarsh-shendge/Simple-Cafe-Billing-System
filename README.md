# ☕ Cafe Billing System (Java + Database Project)

The **Cafe Billing System** is a Java-based application designed to manage a cafe's daily billing operations.  
It provides a **login system, dashboard for orders, and automated billing** using a connected database.  

---

## 🚀 Features
- ✅ Secure **Login system** for staff/admin.  
- ✅ **Dashboard** to manage orders and billing.  
- ✅ **Database connectivity** for storing customer orders, bills, and login credentials.  
- ✅ Generates bills dynamically.  
- ✅ Clean GUI (Java Swing/JavaFX based).  

---

## 📂 Project Structure
Cafe-Billing-System/
│── Login.java # Login interface
│── Dashboard.java # Main billing dashboard
│── DatabaseConnection.java # Database connectivity handler


---

## ⚙️ How It Works
1. **Login** → The user logs in with valid credentials stored in the database.  
2. **Dashboard** → Provides options to add items, calculate total, and generate bills.  
3. **Database Connection** → Stores order details and billing records securely.  
4. **Billing** → The final bill is generated and displayed/saved.  

---

## 🖥️ Requirements
- Java JDK 8 or later  
- Java Swing / JavaFX (for GUI)  
- MySQL / Any relational database  
- JDBC Driver  

---

## ▶️ Setup & Usage

### 1. Database Setup
- Create a MySQL database (e.g., `CafeDB`).  
- Add necessary tables for **users, menu items, and billing records**.  
- Update `DatabaseConnection.java` with your DB username and password.
- Database  code is also available in this repository.

### 2. Compile the project
``bash
javac Login.java Dashboard.java DatabaseConnection.java

### 3.  Run
``bash
java login
