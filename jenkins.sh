#!/bin/bash

#Description:   Jenkins Installation
#Author:        Debo
#Date:          Sept 6th, 2022


echo "Jenkins Server installation about to begin, please wait"
echo
echo
sleep 3

yum install java-1.8.0-openjdk-devel -y
yum install wget -y
wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo --no-check-certificate
sed -i 's/gpgcheck=1/gpgcheck=0/g' /etc/yum.repos.d/jenkins.repo
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
yum install jenkins -y
systemctl start jenkins
systemctl enable jenkins
systemctl status jenkins
firewall-cmd --permanent --zone=public --add-port=8080/tcp
firewall-cmd --reload
echo
echo
echo
sleep 3
echo "Jenkins installation complete"