# Ubuntu VM with Vagrant  

This repository contains a Vagrantfile to set up an Ubuntu virtual machine with specific configurations, ideal for networking, development, and virtualization tasks.  

## Features and Specifications  
1. **Operating System:** Ubuntu (via the `spox/ubuntu-arm` box, version 1.0.0).  
2. **Networking:**  
   - Private IP: `192.168.56.21`.  
   - Public network for internet connectivity.  
3. **Shared Folder:**  
    #Add your user dir 
   - Host: `/Users/user/Desktop/vms/ubuntu-2`  
   - Guest: `/home/vagrant/`  
4. **Hardware Specifications:**  
   - **RAM:** 1200 MB.  
   - **CPU Cores:** 2 cores.  

## Host System Information  
- **System:** MacBook Air M3  
- **OS:** macOS Sonoma  

## Prerequisites  
Before setting up the VM, ensure you have the following:  

1. **Vagrant**  
   - Download and install Vagrant from [Vagrant's official site](https://www.vagrantup.com/).  

2. **VMware Desktop**  
   - Install VMware Desktop (e.g., VMware Workstation or Fusion).  
   - Ensure you have the necessary VMware plugin for Vagrant installed:  
     ```bash  
     vagrant plugin install vagrant-vmware-desktop  
     ```  

3. **Host Directory**  
    #Add your user dir 
   - Create the host folder `/Users/user/Desktop/vms/ubuntu-2` to avoid sync errors.  

4. **Ensure Sufficient Resources**  
   - Ensure your host system has enough free memory and CPU cores to allocate 1200 MB RAM and 2 cores to the VM.  
