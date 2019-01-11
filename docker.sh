!#/bin/bash
clear;
echo "this script is used only for installing docker in ubuntu 18.04"
echo "Please press ctrl+c to exit the script \n "
echo "enter the user name of the docker user"
read name
apt update -y
apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
apt update
apt-cache policy docker-ce
apt install -y docker-ce
systemctl status docker
usermod -aG docker $name
