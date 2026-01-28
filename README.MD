# 🖥️ Windows 10 in Docker Container (Codespaces Ready)

![Docker](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge\&logo=docker\&logoColor=white)
![KVM](https://img.shields.io/badge/KVM-FF6600?style=for-the-badge\&logo=linux\&logoColor=white)
![Windows](https://img.shields.io/badge/Windows-10-0078D6?style=for-the-badge\&logo=windows\&logoColor=white)

Run **Windows 10 inside a Docker container** with KVM acceleration and access it remotely using **noVNC (browser)** or **RDP**.

This project is **optimized for GitHub Codespaces** and local Linux systems.

---

## 🚀 Quick Start (GitHub Codespaces – Recommended)

### 1️⃣ Open the project in Codespaces

Click the link below:

👉 [https://github.com/codespaces/new?hide_repo_select=true&ref=main&repo=525552024&skip_quickstart=true&template=false](https://github.com/codespaces/new?hide_repo_select=true&ref=main&repo=525552024&skip_quickstart=true&template=false)

### 2️⃣ Choose Codespace Machine Specs

When creating the Codespace, select:

* **Machine type:**
  **4 cores • 16 GB RAM • 32 GB Storage**

⚠️ Using lower specs may cause Windows to be slow or fail to boot.

### 3️⃣ Wait for Environment Setup

Codespaces will automatically:

* Build the Docker image
* Prepare networking
* Expose required ports

---

## 📦 Features

* ⚡ Windows 10 running inside Docker
* 🖥️ Web access via **noVNC** (no client needed)
* 🧩 RDP support (3389)
* 🚀 KVM acceleration (when supported)
* 💾 Persistent storage using Docker volumes
* 🌐 Works on **Codespaces** & **Linux hosts**

---

## 🛠️ Requirements

### For GitHub Codespaces

* GitHub account
* Codespace with **4 CPU / 16 GB RAM**
* Modern browser

### For Local Linux Host

* Linux OS
* Docker installed
* KVM enabled (`/dev/kvm` exists)
* Windows 10 ISO file

---

## 🚀 Installation (Local Linux)

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/ZarkosX/windows10vm
cd windows10vm
```

### 2️⃣ Build the Docker Image

```bash
docker build -t windows10-vm .
```

### 3️⃣ Run the Container

```bash
docker run -it --rm \
  --device /dev/kvm \
  -p 6080:6080 \
  -p 3389:3389 \
  -v windows_data:/data \
  -v windows_iso:/iso \
  windows10-vm
```

---

## ▶️ Start Windows VM

After the container starts:

```bash
bash Start.sh
```

---

## 🌐 Access Windows

### noVNC (Browser)

```
http://localhost:6080
```

### RDP

* **Host:** localhost
* **Port:** 3389

---

## ⚠️ Notes & Limitations

* KVM acceleration depends on host support (limited on Codespaces)
* First boot may take several minutes
* Use SSD-backed storage for better performance

---

## 📄 License

MIT License

---

## ⭐ Credits

Maintained by **SoloDev**

If this helped you, don’t forget to ⭐ the repo!
