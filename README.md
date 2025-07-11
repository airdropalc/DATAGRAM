# Datagram CLI Installer

A streamlined, interactive shell script to download, install, and run the [Datagram CLI](https://github.com/Datagram-Group/datagram-cli-release) on Linux systems.

> ✅ Includes support for cross-device file system compatibility.

---

## Features

- 🚀 One-click install with interactive prompts
- 🧠 Automatic download of latest `datagram-cli` binary
- 🔒 License key entry prompt
- 🛠 Fixes `invalid cross-device link` error via `TMPDIR`

---

## Requirements

| Requirement         | Description                            |
|---------------------|----------------------------------------|
| OS                  | Linux (x86_64)                         |
| Shell               | `bash`                                 |
| Tools               | `wget`, `sudo`, `mv`, `chmod`          |
| Internet Access     | Required for download                  |
| Permissions         | Sudo required to install system binary |

---

## How to Use

Clone the repository and run the script in **one line**:

```bash
git clone https://github.com/airdropalc/DATAGRAM.git && cd DATAGRAM && chmod +x datagram.sh && ./datagram.sh
