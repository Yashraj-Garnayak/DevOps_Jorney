#!/bin/bash

yum update -y 
yum install httpd wget unzip -y
systemctl start httpd
systemctl enable httpd
systemctl stop firewalld
mkdir -p /tmp/website
cd /tmp/website
wget  https://www.tooplate.com/zip-templates/2133_moso_interior.zip
unzip -o 2133_moso_interior.zip
cp -r 2133_moso_interior/* /var/www/html/
sudo systemctl restart httpd
cd /tmp/
rm -rf website