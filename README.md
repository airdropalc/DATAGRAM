# DATAGRAM CLI Installer

An easy-to-use interactive shell script that installs and runs the official [`datagram-cli`](https://github.com/Datagram-Group/datagram-cli-release`) for Linux systems.

This installer helps you quickly bootstrap the CLI, input your license key, and run the tool — all in a single clean interface. Whether you're a builder, contributor, or explorer, this script makes setup seamless.

---

## ✅ Features

- 🔧 Automatic download of the latest `datagram-cli` binary
- 📁 Installs to `/usr/local/bin` for global CLI access
- 🛡️ Interactive prompt for License Key

---

## 🧰 Requirements

| Requirement      | Description                        |
|------------------|------------------------------------|
| OS               | Linux (x86_64)                     |
| Shell            | Bash-compatible shell              |
| Internet         | Required to fetch the latest binary|
| Tools            | `wget`, `sudo`, `chmod`, `mv`      |
| Privileges       | `sudo` access (to move binary)     |

---

## 🚀 Installation & Execution

### One-Line Install (recommended)

Paste this into your terminal to instantly clone, set permissions, and run the script:

```bash
git clone https://github.com/airdropalc/DATAGRAM.git && cd DATAGRAM && chmod +x datagram.sh && ./datagram.sh
