#! /usr/bin/env bash

RED="\e[31m"
END="\e[0m"
echo

echo -e "${RED}Updating Packages.${END}"
sudo apt update

echo

echo -e "${RED}Upgrading Packages.${END}"
sudo apt upgrade -y
sudo apt dist-upgrade -y

echo

echo -e "${RED}Double checking for any updates.${END}"
sudo apt update

echo

echo -e "${RED}Cleaning Up.${END}"
sudo apt clean
sudo apt autoclean
sudo apt autoremove

exit
