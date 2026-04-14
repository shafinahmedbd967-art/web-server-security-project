# Linux Web Server Deployment & Security Hardening

## 📌 Project Description
This project demonstrates a complete Linux-based Apache Web Server setup with advanced security and management features. It includes virtual hosting, HTTPS encryption, firewall configuration, access monitoring, and server hardening techniques using Ubuntu Linux.

The system simulates real-world server administration practices used in production environments.

---

## 🚀 Features

### 🌐 Web Server Setup
- Apache2 installed on Ubuntu
- Static HTML website hosting
- Custom UI dashboard

### 🏠 Virtual Hosting
- Multiple websites on a single server
- site1.local and site2.local support
- Name-based virtual hosting configuration

### 🔐 HTTPS Security
- SSL/TLS encryption enabled
- Self-signed certificate configuration
- Secure communication between client and server

### 🧱 Firewall Protection
- UFW (Uncomplicated Firewall) configured
- Only HTTP (80) and HTTPS (443) allowed
- Unauthorized access blocked

### 👀 Access Monitoring
- Real-time Apache access log tracking
- Request monitoring using log files
- Security and traffic analysis support

### 🛡️ Security Hardening
- Server signature disabled
- Server version hidden (ServerTokens Prod)
- Directory listing disabled
- Reduced information leakage

### 🎛️ Admin Dashboard
- Web-based server status panel
- Navigation to all system components
- Monitoring interface simulation

---

## ⚙️ Technologies Used
- Ubuntu Linux
- Apache2 Web Server
- HTML / CSS
- OpenSSL
- UFW Firewall
- Bash Terminal Commands

---
## 🖥️ How to Run

### 1. Install Apache

```bash
sudo apt update
sudo apt install apache2 -y
```

### 2. Enable Virtual Hosts

```bash
sudo a2ensite site1.conf
sudo a2ensite site2.conf
sudo systemctl reload apache2
```

### 3. Enable SSL

```bash
sudo a2enmod ssl
sudo systemctl restart apache2
```

### 4. Configure Firewall

```bash
sudo ufw allow 80
sudo ufw allow 443
sudo ufw enable
```

### 5. Open in Browser

```
http://localhost
http://site1.local
http://site2.local
https://localhost
```

---

## 📊 Learning Outcomes

* Linux server management
* Apache web server configuration
* Network security fundamentals
* SSL certificate setup
* Firewall configuration
* Real-time server monitoring

---

## 👨‍💻 Author

Group Project – Operating Systems Course
University Level Linux Server Implementation

---

## 📌 Note

This project is for educational purposes and simulates real-world server deployment and security practices.
