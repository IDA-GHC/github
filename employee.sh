#!/bin/bash

# Simple script to install Jenkins on Red Hat-based systems

ec "Updating system packages..."
sudo yum update -y

echo "Installing Java 11..."
sudo yum install java-11-openjdk-devel -y

echo "Adding Jenkins repository..."
sudo curl -o /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

ech "Installing Jenkins..."
sudo yum install jenkins -y

echo "Starting Jenkins service..."
sudo systemctl start jenkins

echo "Enabling Jenkins to start on boot..."
sudo systemctl enable jenkins

echo "Configuring firewall to allow Jenkins (port 8080)..."
sudo firewall-cmd --permanent --add-port=8080/tcp
sudo firewall-cmd --reload

echo "Jenkins installed and running. Access it at http://<your-server-ip>:8080"

echo "Retrieving initial admin password..."
sudo cat /var/lib/jenkins/secrets/initialAdminPassword


