#!/bin/bash

#Description:   Sonarqube Automation Installation
#Date       :   Sept 9th, 2022
#Author     :   Debo

echo -e "\nSystem update ongoing, please wait\n"

sudo yum install wget unzip net-tools -y
sudo yum update -y
sleep 3
echo
echo -e "\nSonarqube installation ongoing, Please Standby\n"

sudo yum install java-11-openjdk-devel -y
sudo yum install java-11-openjdk -y

cd /opt
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
sudo unzip /opt/sonarqube-9.3.0.51899.zip
sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899

cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
./sonar.sh start

sudo firewall-cmd --permanent --add-port=9000/tcp
sudo firewall-cmd --reload

echo -e "\nSonarqube Installation complete\n"