# Vagrantfile for CentOS Stream 9 on VMware Desktop

This project provisions a virtual machine running **CentOS Stream 9** with essential tools and configurations using Vagrant.

---

## Prerequisites

Ensure the following are installed:
- **Vagrant**: [Download here](https://www.vagrantup.com/)
- **VMware Workstation/Fusion**: Installed and configured on your system
- **Vagrant VMware Plugin**: Required for VMware providers

---

## Configuration

### Vagrant Box
- **Box Name**: `bandit145/centos_stream9_arm`
- CentOS Stream 9 (ARM architecture)

### Network Settings
- **Private Network**: Static IP `192.168.56.88`
- **Public Network**: Bridged to the host machine

### Resource Allocation
- **Memory**: 1024 MB
- **GUI Mode**: Enabled for VMware Desktop

### Provisioning
The VM is provisioned with a shell script that:
1. Updates all packages.
2. Installs:
   - `tmux`
   - `httpd` (Apache Web Server)
   - `wget`, `unzip`, `git`
3. Starts and enables Apache (`httpd`).
4. Creates a development directory at `/opt/devopsdir`.
5. Displays system info:
   - Free memory
   - System uptime
6. Stops and disables the firewall.
