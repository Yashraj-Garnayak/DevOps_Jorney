

# Automated Website Hosting with Vagrant  

This project automates the hosting of a sample website on a CentOS Stream 9 virtual machine using Vagrant. Apache HTTP Server is used to serve the website. 


## Requirements  

Ensure the following are installed on your system:  

- **Vagrant** (latest version recommended)  
- **VMware Workstation/Fusion** (or another supported provider)  
- **VMware provider plugin for Vagrant**  

---

## Vagrant Configuration  

The included `Vagrantfile` performs the following tasks:  

1. Creates a CentOS Stream 9 virtual machine using the `bandit145/centos_stream9_arm` box.  
2. Configures both private and public networks for the VM.  
3. Allocates **1 GB of memory** and enables GUI mode for the VM.  
4. Executes inline shell provisioning to:  
   - Update the system packages.  
   - Install `httpd`, `wget`, and `unzip`.  
   - Disable the firewall for easier website access.  
   - Deploy a sample website template downloaded from **Tooplate**.  
   - Start and enable the Apache HTTP Server.  
   - Clean up temporary files after provisioning.  

---

## Usage Instructions  

### Step 1: Clone the Repository  
###

# Automated Website Hosting with Vagrant  

This project automates the hosting of a sample website on a CentOS Stream 9 virtual machine using Vagrant. Apache HTTP Server is used to serve the website.  

---

## Requirements  

Ensure the following are installed on your system:  

- **Vagrant** (latest version recommended)  
- **VMware Workstation/Fusion** (or another supported provider)  
- **VMware provider plugin for Vagrant**  

---

## Vagrant Configuration  

The included `Vagrantfile` performs the following tasks:  

1. Creates a CentOS Stream 9 virtual machine using the `bandit145/centos_stream9_arm` box.  
2. Configures both private and public networks for the VM.  
3. Allocates **1 GB of memory** and enables GUI mode for the VM.  
4. Executes inline shell provisioning to:  
   - Update the system packages.  
   - Install `httpd`, `wget`, and `unzip`.  
   - Disable the firewall for easier website access.  
   - Deploy a sample website template downloaded from **Tooplate**.  
   - Start and enable the Apache HTTP Server.  
   - Clean up temporary files after provisioning.  

---

## Usage Instructions  

### Step 1: Clone the Repository  

git clone <repository-url>  
cd <repository-folder>

### Step 2: Start the Vagrant VM  

Run the following command to create and provision the VM:  

vagrant up

This will:  
- Boot the VM.  
- Install Apache and required tools.  
- Deploy the sample website.  

### Step 3: Access the Website  

1. Open a web browser.  
2. Navigate to `http://192.168.56.57`.  

For public network access, retrieve the public IP using:  

vagrant ssh -c "ip addr show | grep inet"

---

## Website Preview  

_Add a screenshot or provide the deployed website link here._  

---

## Cleanup  

To stop and delete the VM, run:  

vagrant destroy

---

## Troubleshooting  

- **Firewall Issues**: Ensure the private network IP `192.168.56.57` is accessible and not blocked by your host machine's firewall.  
- **Provisioning Errors**: Verify your Vagrant and provider versions, then retry with `vagrant up`.  

---

## Notes  

The sample website template is **2133 Moso Interior** from [Tooplate](https://www.tooplate.com/).  