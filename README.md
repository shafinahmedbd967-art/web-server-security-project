# 🔐 Linux Web Server Deployment & Security Hardening

![Platform](https://img.shields.io/badge/Platform-Ubuntu%20Linux-E95420.svg?logo=ubuntu&logoColor=white)
![Server](https://img.shields.io/badge/Server-Apache2-D22128.svg?logo=apache&logoColor=white)
![Security](https://img.shields.io/badge/Security-SSL%2FTLS%20%7C%20UFW-green.svg)
![Shell](https://img.shields.io/badge/Automation-Bash-4EAA25.svg?logo=gnu-bash&logoColor=white)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen.svg)

A complete, hands-on Linux server administration project simulating a real-world **Apache web server deployment** — covering virtual hosting, HTTPS encryption, firewall configuration, access log monitoring, and server hardening, all built and automated on **Ubuntu Linux**.

---

## 📖 Table of Contents

- [Overview](#-overview)
- [Objectives](#-objectives)
- [Features](#-features)
- [Project Structure](#-project-structure)
- [File Overview](#-file-overview)
- [Technologies Used](#️-technologies-used)
- [How to Run](#️-how-to-run)
- [Automation Scripts](#-automation-scripts)
- [Skills Gained](#-skills-gained)
- [Learning Outcomes](#-learning-outcomes)
- [Note](#-note)
- [Author](#-author)

---

## 🎯 Overview

This project demonstrates a complete **Linux-based Apache web server setup** with advanced security and management features. It includes multi-site virtual hosting, HTTPS encryption via self-signed SSL certificates, UFW firewall configuration, real-time access log monitoring, and several server hardening techniques — simulating the kind of production-grade server administration practices used in real-world environments.

Beyond just spinning up a server, this project also includes a set of custom-built **web-based dashboard pages** (admin panel, status page, log viewer) to visually represent server management concepts, along with fully automated **Bash scripts** for installation, firewall setup, and log monitoring.

---

## 🎯 Objectives

This project was built to demonstrate:

- ✅ Linux system administration
- ✅ Apache web server deployment
- ✅ Virtual host configuration
- ✅ SSL/TLS security implementation
- ✅ Firewall hardening
- ✅ Server monitoring
- ✅ Shell script automation
- ✅ Production server concepts

---

## 🚀 Features

### 🌐 Web Server Setup
Apache2 installed and configured on Ubuntu, serving static HTML content through a custom-built UI dashboard.

### 🏠 Virtual Hosting
Multiple independent websites hosted on a single server using name-based virtual hosting (`site1.local`, `site2.local`), each with its own configuration and content.

### 🔐 HTTPS Security
SSL/TLS encryption enabled using a self-signed certificate, securing communication between client and server.

### 🧱 Firewall Protection
UFW (Uncomplicated Firewall) configured to allow only HTTP (80) and HTTPS (443) traffic, blocking all unauthorized connections.

### 👀 Access Monitoring
Real-time Apache access and error log tracking for request monitoring, traffic analysis, and basic security event tracking.

### 🛡️ Security Hardening
- Server signature disabled
- Server version hidden (`ServerTokens Prod`)
- Directory listing disabled
- Reduced information leakage from default Apache responses

### 🎛️ Admin Dashboard
A web-based server status panel with navigation to all system components, simulating a real server monitoring/admin interface.

---

## 📂 Project Structure

```text
Linux-Web-Server-Deployment-Security-Hardening/
│
├── server-scripts/
│   ├── install_server.sh       # Automates Apache installation & setup
│   ├── firewall_setup.sh       # Automates UFW firewall configuration
│   └── monitor_logs.sh         # Automates Apache log monitoring
│
├── site1/
│   └── index.html              # Virtual Host Website 01
│
├── site2/
│   └── index.html              # Virtual Host Website 02
│
├── admin.html                  # Administrative control panel
├── index.html                  # Main project dashboard/homepage
├── status.html                 # Server status monitoring page
├── logs.html                   # Log monitoring interface
├── realsystem.html             # Real-world server config overview
└── README.md
```

---

## 📄 File Overview

| File | Description |
|---|---|
| **`index.html`** | Central homepage of the project — project overview, navigation menu, and quick access to all server tools and management links. |
| **`admin.html`** | Administrative control interface simulating server management, with a security overview and admin navigation. |
| **`status.html`** | Displays server operational information — server status, service info, and simulated resource monitoring. |
| **`logs.html`** | Represents server log monitoring functionality — access log samples, monitoring info, and security event tracking. |
| **`realsystem.html`** | Simulates real-world Linux server deployment info — configuration details, security settings, and infrastructure overview. |
| **`site1/index.html`** | First hosted website — demonstrates Apache virtual hosting with a separate domain configuration and independent content. |
| **`site2/index.html`** | Second hosted website — demonstrates multi-site, name-based virtual host implementation. |

---

## 🛠️ Technologies Used

<div align="center">

![Ubuntu](https://img.shields.io/badge/-Ubuntu%20Linux-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)
![Apache](https://img.shields.io/badge/-Apache2-D22128?style=for-the-badge&logo=apache&logoColor=white)
![HTML5](https://img.shields.io/badge/-HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/-CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)
![OpenSSL](https://img.shields.io/badge/-OpenSSL-721412?style=for-the-badge&logo=openssl&logoColor=white)
![UFW](https://img.shields.io/badge/-UFW%20Firewall-4EAA25?style=for-the-badge&logo=linux&logoColor=white)
![Bash](https://img.shields.io/badge/-Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)

</div>

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

## ⚙️ Automation Scripts

### `install_server.sh`
Automates the full Apache installation process.

**Responsibilities:**
- System update
- Apache installation
- Initial configuration

```bash
sudo bash install_server.sh
```

### `firewall_setup.sh`
Automates UFW firewall configuration.

**Responsibilities:**
- Allow HTTP traffic
- Allow HTTPS traffic
- Block unauthorized connections

```bash
sudo bash firewall_setup.sh
```

### `monitor_logs.sh`
Provides real-time Apache log monitoring.

**Responsibilities:**
- Access log tracking
- Error log monitoring
- Real-time request observation

```bash
sudo bash monitor_logs.sh
```

---

## 🧪 Skills Gained

After completing this project, hands-on experience was gained in:

- Ubuntu server administration
- Apache configuration
- Virtual host management
- HTTPS deployment
- OpenSSL certificate creation
- UFW firewall rules
- Bash scripting
- Log analysis
- Security hardening techniques
- Web server troubleshooting

---

## 📊 Learning Outcomes

- Linux server management
- Apache web server configuration
- Network security fundamentals
- SSL certificate setup
- Firewall configuration
- Real-time server monitoring

---

## 📌 Note

This project is for **educational purposes** and simulates real-world server deployment and security practices in a controlled environment.

---

## 👨‍💻 Author

**Group Project — Operating Systems Course**
University-level Linux server implementation

Developed by:
**Shafin Ahmed**
Department of Computer Science and Engineering
Daffodil International University

- GitHub: [@shafinahmedbd967-art](https://github.com/shafinahmedbd967-art)
- Repository: [web-server-security-project](https://github.com/shafinahmedbd967-art/web-server-security-project)

---

<p align="center">🔒 Secured, monitored, and hardened — one server at a time.</p>
