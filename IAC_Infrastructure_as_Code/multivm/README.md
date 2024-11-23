# Vagrantfile Setup for Multi-Node Ubuntu and CentOS ARM VMs with WordPress & Web Hosting

This repository contains a `Vagrantfile` for creating and provisioning two virtual machines (VMs): one running Ubuntu (with WordPress hosting) and the other running CentOS Stream 9 (with a sample website). The VMs are configured with the VMware provider and provisioned using shell scripts.

---

## Prerequisites

- Vagrant installed on your system.
- VMware Desktop installed and configured as a Vagrant provider.

---

## Features

### VMs Configuration

- **Node 1** (Ubuntu):
  - **Base Box**: `spox/ubuntu-arm` (v1.0.0)
  - **Hostname**: `node1`
  - **Provisioning Script**: `ubuntu_script.sh`
  - **Special Configuration**: `is_special = true` (box version is set to `1.0.0`)

- **Node 2** (CentOS Stream 9 ARM):
  - **Base Box**: `bandit145/centos_stream9_arm`
  - **Hostname**: `node2`
  - **Provisioning Script**: `centos_script.sh`

- **Networking**:
  - Each VM is configured with a private network and an IP address in the `192.168.56.x` subnet, starting from `192.168.56.10`.
  - VMware provider settings include enabling GUI for both VMs.

---

## Setup Instructions

1. Clone this repository or copy the `Vagrantfile` and provisioning scripts to a directory.
2. Ensure the `ubuntu_script.sh` and `centos_script.sh` files are present and correctly configured in the same directory as the `Vagrantfile`.
3. Run the following command to create and start the VMs:

   `vagrant up`

4. The provisioning scripts will automatically execute:
   - **Node 1 (Ubuntu)**: Installs Apache, MySQL, PHP, and sets up WordPress.
   - **Node 2 (CentOS)**: Installs Apache and sets up a sample website.

---

## WordPress Setup (Node 1 - Ubuntu)

The `ubuntu_script.sh` provisions a WordPress website on the Ubuntu VM. The script installs necessary packages (Apache, MySQL, PHP), creates a MySQL database, and configures Apache to serve WordPress.

- **MySQL Credentials**:
  - **Database**: `wordpress`
  - **Username**: `wordpress`
  - **Password**: `admin123` (Please change this for better security).
  
You can change the password for the database by modifying the line in `ubuntu_script.sh`:

`mysql -u root -e 'CREATE USER wordpress@localhost IDENTIFIED BY "admin123";'`

- To access WordPress, open your browser and go to `http://192.168.56.10`.

---

## CentOS Web Hosting Setup (Node 2 - CentOS)

The `centos_script.sh` provisions the CentOS VM with a sample website using the "Moso Interior" template.

- The script performs the following actions:
  - Installs necessary packages: Apache, wget, unzip.
  - Downloads and extracts the "Moso Interior" template from Tooplate.
  - Copies the template files to `/var/www/html/` to serve via Apache.

**Warning**: The script disables the firewall (`firewalld`), which might expose the VM to network security risks. It is highly recommended to review your security policies and adjust firewall settings as needed.

`systemctl stop firewalld`

---

## VM Management

- **Start the VM**:  
  `vagrant up`

- **SSH into the VM**:  
  `vagrant ssh node1   # For Ubuntu Node 1`  
  `vagrant ssh node2   # For CentOS Node 2`

- **Stop the VM**:  
  `vagrant halt`

- **Destroy the VM**:  
  `vagrant destroy`

---

## Notes

- The IP addresses for each VM are configured to be in the `192.168.56.x` subnet, starting from `192.168.56.10` for Node 1 and incrementing for Node 2.
- The provisioning scripts are executed automatically when the VM is brought up (`vagrant up`), so no manual intervention is needed after running the command.
- Make sure to update the MySQL password for security reasons.

---

**Author**: Yashraj Ayaskanta Garnayak