# Automated WordPress Setup with Vagrant  

This project automates the deployment of a WordPress site using Vagrant and Ubuntu. The configuration provisions a complete LAMP stack, installs WordPress, and sets up the necessary Apache configurations.  

---

## Requirements  

Ensure the following are installed on your system:  

- **Vagrant** (latest version recommended)  
- **VMware Workstation/Fusion** (or another supported provider)  
- **VMware provider plugin for Vagrant**  
- A valid directory to sync files with the VM (adjust in the `Vagrantfile` if needed).  

---

## Features  

The `Vagrantfile` automates the following:  

1. Creates an Ubuntu VM using the `spox/ubuntu-arm` box.  
2. Configures private networking with the IP `192.168.56.78`.  
3. Allocates **1.2 GB memory** and **2 CPUs** to the VM.  
4. Syncs a folder from the host machine to the VM.  
5. Installs the LAMP stack: Apache, MySQL, PHP, and required extensions.  
6. Sets up WordPress:  
   - Downloads and extracts WordPress into `/srv/www`.  
   - Configures Apache to serve WordPress.  
   - Creates a MySQL database and user for WordPress.  
   - Updates the `wp-config.php` file with database credentials.  

---

## Usage Instructions  

### Step 1: Clone the Repository  

Clone the repository containing this `Vagrantfile` and navigate to the folder:  

git clone <repository-url>  
cd <repository-folder>  

### Step 2: Start the Vagrant VM  

Run the following command to create and provision the VM:  

vagrant up  

This will:  
- Boot the virtual machine.  
- Install the LAMP stack and WordPress.  
- Configure Apache and MySQL.  

### Step 3: Access the WordPress Site  

Open a web browser and navigate to:  

http://192.168.56.78  

You should see the WordPress setup page. Follow the instructions to complete the installation.  

---

## Synced Folder  

The folder `/Users/yashrajgarnayak/Desktop/vms/ubuntu-2` on your host machine is synced with `/home/vagrant/` on the VM. Use this folder to transfer files between the host and VM.  

---

## Cleanup  

To stop and delete the VM, run:  

vagrant destroy  

---

## Troubleshooting  

- **Network Issues**: Ensure `192.168.56.78` is accessible from your host machine.  
- **Apache Configuration Errors**: Check the Apache logs inside the VM:  

  vagrant ssh  
  sudo cat /var/log/apache2/error.log  

- **MySQL Issues**: Test the MySQL credentials using:  

  mysql -u wordpress -padmin123  

---

## Notes  

- The VM uses the `spox/ubuntu-arm` box version `1.0.0`.  
- The default MySQL credentials for the WordPress database are:  
  - Database: `wordpress`  
  - User: `wordpress`  
  - Password: `admin123`  

Ensure you change these credentials in production environments for security.  