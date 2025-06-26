# System Information Script

A bash script that gathers and displays comprehensive system, network, and user information when internet connectivity is available.

## Features

- **System Information**:
  - OS type and kernel version
  - Hostname and architecture
  - CPU model and RAM capacity
  - Disk usage statistics
  - Uptime information

- **Network Information**:
  - Public IP address
  - Forwarded IP (if any)
  - Local IP address and interface
  - Network gateway
  - Internet connectivity check

- **User Information**:
  - Current user details
  - Active sessions count
  - Logged-in users
  - Shell information
  - Home directory location

- **Visual Enhancements**:
  - Color-coded output for better readability
  - Clean section separation
  - System load summary

## Prerequisites

- Bash shell
- `curl` installed (for IP address detection)
- Internet connectivity (for public IP detection)
- Standard GNU core utilities (awk, grep, etc.)

## Installation

No installation needed. Simply download the script and make it executable:

```bash
chmod +x sysinfo.sh
```

## Usage

```bash
./sysinfo.sh
```

## Or execute without saving

```bash
<(curl -s https://raw.githubusercontent.com/Andrey-oss/sysinfo/main/sysinfo.sh)
```

## Compatibility

### Tested on:
- Linux (Arch linux/Ubuntu)
- Android (Termux)

## 📜 License
MIT License. See LICENSE for details.

## Note:
This script uses external services (ifconfig.me) for IP detection. For privacy-sensitive environments, modify to use internal services only.
