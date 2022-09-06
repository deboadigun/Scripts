#!/bin/bash


#Description: Installlation of software packages for Centos 7

#Author: Debo
#Date: Sept 6th, 2022


echo "Package installation ongoing, please wait"
echo
echo
sleep 3
yum install net-tools sysstat wget curl git tree vim -y

sleep 2
echo
echo
echo "Installation completed"