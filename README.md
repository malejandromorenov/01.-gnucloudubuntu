# GNUCloud
Script Initial Cloud only for test purpose

apt install ruby-thor
apt install php-pear
pecl

sudo apt-get install iptables-persistent
sudo apt-get install ntp
apt install proot

sudo apt purge upstart
sudo apt install upstart
sudo reboot
sudo apt purge upstart
apt install nmap
apt install nuget
apt install php7.2-cli

# nodejs
curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh
nano nodesource_setup.sh
sudo bash nodesource_setup.sh



apt-get install gnupg2
apt-get install golang-go
apt-get install alpine
apt-get install kleopatra
apt-get install alice
apt-get install nodejs
apt-get install yarn
apt-get install ruby

# After install ruby you would install gems
gem install gitlab-development-kit
gem install rhc

apt install mono-runtime
apt-get install golang-go
apt-get install gccgo-go

apt install imagemagick-6.q16
apt install graphicsmagick-imagemagick-compat
apt install imagemagick-6.q16hdr

# brew is cluster package for macOS available for Linux (Test only Ubuntu)
apt-get install linuxbrew-wrapper

echo 'export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"' >>~/.bashrc
echo 'export MANPATH="/home/linuxbrew/.linuxbrew/share/man:$MANPATH"' >>~/.bashrc
echo 'export INFOPATH="/home/linuxbrew/.linuxbrew/share/info:$INFOPATH"' >>~/.bashrc


apt install opam
apt install nginx
apt install vagrant
apt install varnish
apt install trash-cli
apt install python-pip
apt install elixir
apt install qemu

apt install apache2-bin
apt-get install default-jdk
sudo apt install maven

# BD
apt install mongodb-clients
apt install mariadb-client-core-10.1
apt install sqlite

# SQL 2017
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
add-apt-repository "$(wget -qO- https://packages.microsoft.com/config/ubuntu/16.04/mssql-server-2017.list)"
apt-get update
apt-get install -y mssql-server
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list | sudo tee /etc/apt/sources.list.d/msprod.list
sudo apt-get update 
sudo apt-get install mssql-tools unixodbc-dev
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
source ~/.bashrc
apt-get update 
apt-get install mssql-server-agent
apt-get update 
apt-get install -y mssql-server-fts
apt-get install mssql-server-is

sudo su 
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -

#Download appropriate package for the OS version
#Choose only ONE of the following, corresponding to your OS version

#Ubuntu 18.04
curl https://packages.microsoft.com/config/ubuntu/18.04/prod.list > /etc/apt/sources.list.d/mssql-release.list
sudo apt-get update
sudo ACCEPT_EULA=Y apt-get install msodbcsql17
# optional: for bcp and sqlcmd
sudo ACCEPT_EULA=Y apt-get install mssql-tools
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
source ~/.bashrc
# optional: for unixODBC development headers
sudo apt-get install unixodbc-dev

# .net
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install dotnet-sdk-2.1


# Docker
sudo apt-get install apt-transport-https
apt-get install ca-certificates   
apt-get install curl   
apt-get install software-properties-common 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get install docker-ce
sudo docker run hello-world

# Cloud
# Azure
AZ_REPO=$(lsb_release -cs)
echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" | \
sudo tee /etc/apt/sources.list.d/azure-cli.list
curl -L https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install apt-transport-https azure-cli

# IBM
curl -fsSL https://clis.ng.bluemix.net/install/linux | sh
ibmcloud plugin repo-plugins -r 'IBM Cloud'
ibmcloud plugin install cloud-object-storage
ibmcloud plugin install key-protect/kp
ibmcloud plugin install cloud-databases
ibmcloud plugin install infrastructure-service
ibmcloud plugin install dbaas-cli
ibmcloud plugin install cloud-internet-services/cis
ibmcloud plugin install machine-learning
ibmcloud plugin install logging-cli
ibmcloud plugin install activity-tracker
ibmcloud plugin install cloud-functions
ibmcloud plugin install analytics-engine
ibmcloud plugin install dev
ibmcloud plugin install sdk-gen
ibmcloud plugin install container-registry
ibmcloud plugin install container-service/kubernetes-service
ibmcloud plugin install private-network-peering
ibmcloud plugin install vpn
ibmcloud plugin install auto-scaling

# Google
# Create environment variable for correct distribution
export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"

# Add the Cloud SDK distribution URI as a package source
echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

# Import the Google Cloud Platform public key
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

# Update the package list and install the Cloud SDK
sudo apt-get update && sudo apt-get install google-cloud-sdk

RUN export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)" && \
    echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && \
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - && \
    apt-get update -y && apt-get install google-cloud-sdk -y

apt-get install google-cloud-sdk-app-engine-python-extras
apt-get install google-cloud-sdk-app-engine-python
apt-get install google-cloud-sdk-app-engine-php
apt-get install google-cloud-sdk-app-engine-java
apt-get install google-cloud-sdk-docker-credential-gcr
apt-get install google-cloud-sdk-container-builder-local
apt-get install google-cloud-sdk-cloud-build-local
apt-get install google-cloud-sdk-emulator-reverse-proxy
apt-get install google-cloud-sdk-cloud_sql_proxy
apt-get install google-cloud-sdk-pubsub-emulator
apt-get install google-cloud-sdk-gcd-emulator
apt-get install google-cloud-sdk-cloud-datastore-emulator
apt-get install google-cloud-sdk-datalab
apt-get install google-cloud-sdk-app-engine-go
sudo apt-get install google-cloud-sdk-cbt


# Puppet
wget https://apt.puppetlabs.com/puppetlabs-release-pc1-xenial.deb
sudo dpkg -i puppetlabs-release-pc1-xenial.deb
sudo apt update
gpg --keyserver pgp.mit.edu --recv-key 7F438280EF8D349F
gpg --list-key --fingerprint 7F438280EF8D349F
sudo apt-get update
sudo apt-get install pdk


# AWS
pip install awscli --upgrade --user


# brew run without sudo
brew install gcc
brew install git
brew install go
brew install gpg
brew install nodejs
brew install elixir
brew install qemu
