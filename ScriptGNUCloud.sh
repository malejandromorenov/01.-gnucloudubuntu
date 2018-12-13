#!bin/bash
echo -----------------------------------------
echo ---
echo RUN WITH PRECAUTION, AVAILABLE ONLY LINUX
echo ---
echo -----------------------------------------
#INIT SCRPT WITH SUPERUSER
sudo su
#
apt-get install ruby-thor
#INSTALL PECL REPOSITORIES
apt-get install php-pear
#
apt-get install iptables-persistent
apt-get install ntp
apt-get install proot
apt-get purge upstart
apt-get install upstart
apt-get install nmap
apt-get install nuget
apt-get install php7.2-cli
#nodejs
curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh
bash nodesource_setup.sh
#
apt-get install gnupg2
apt-get install golang-go
apt-get install alpine
apt-get install kleopatra
apt-get install alice
apt-get install nodejs
apt-get install yarn
apt-get install ruby
#GEMS ONLY RUN AFTER INSTALL RUBY
gem install gitlab-development-kit
gem install rhc
#
apt-get install mono-runtime
apt-get install golang-go
apt-get install gccgo-go
apt-get install imagemagick-6.q16
apt-get install graphicsmagick-imagemagick-compat
apt-get install imagemagick-6.q16hdr
#BREW IS A MACOSX REPOSITORIES
apt-get install linuxbrew-wrapper
#ADD TO PATH
echo 'export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"' >>~/.bashrc
echo 'export MANPATH="/home/linuxbrew/.linuxbrew/share/man:$MANPATH"' >>~/.bashrc
echo 'export INFOPATH="/home/linuxbrew/.linuxbrew/share/info:$INFOPATH"' >>~/.bashrc
#
apt-get install opam
apt-get install nginx
apt-get install vagrant
apt-get install varnish
apt-get install trash-cli
apt-get install python-pip
apt-get install elixir
apt-get install qemu
apt-get install apache2-bin
apt-get install default-jdk
apt-get install maven
#BD IS DEVELOPER FOR VARIABLES
apt install mongodb-clients
apt install mariadb-client-core-10.1
apt install sqlite
#SQL 2017
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
add-apt-repository "$(wget -qO- https://packages.microsoft.com/config/ubuntu/16.04/mssql-server-2017.list)"
apt-get update
apt-get install -y mssql-server
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list | sudo tee /etc/apt/sources.list.d/msprod.list
sudo apt-get install mssql-tools unixodbc-dev
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
#
apt-get install mssql-server-agent
apt-get install -y mssql-server-fts
apt-get install mssql-server-is
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
#Download appropriate package for the OS version
#Choose only ONE of the following, corresponding to your OS version
#Ubuntu 18.04
curl https://packages.microsoft.com/config/ubuntu/18.04/prod.list > /etc/apt/sources.list.d/mssql-release.list
sudo ACCEPT_EULA=Y apt-get install msodbcsql17
# optional: for bcp and sqlcmd
sudo ACCEPT_EULA=Y apt-get install mssql-tools
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
source ~/.bashrc
# optional: for unixODBC development headers
apt-get install unixodbc-dev
#.net
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
apt-get install apt-transport-https
apt-get install dotnet-sdk-2.1
#DOCKER CONTAINER 
apt-get install apt-transport-https
apt-get install ca-certificates   
apt-get install curl   
apt-get install software-properties-common 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt-get install docker-ce
docker run hello-world
#CLOUD INIT NOVEMBER 2017
#AZURE
AZ_REPO=$(lsb_release -cs)
echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" | \
sudo tee /etc/apt/sources.list.d/azure-cli.list
curl -L https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install apt-transport-https azure-cli
#IBMCLOUD
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
#GOOGLECLOUD
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
#PPUPPET
wget https://apt.puppetlabs.com/puppetlabs-release-pc1-xenial.deb
sudo dpkg -i puppetlabs-release-pc1-xenial.deb
sudo apt update
gpg --keyserver pgp.mit.edu --recv-key 7F438280EF8D349F
gpg --list-key --fingerprint 7F438280EF8D349F
sudo apt-get update
sudo apt-get install pdk
#AWS
pip install awscli --upgrade --user
#Update December 2018
#RUST
curl https://sh.rustup.rs -sSf | sh
#LLVM
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key|sudo apt-key add -
# Fingerprint: 6084 F3CF 814B 57C1 CF12 EFD5 15CF 4D18 AF4F 7421
apt-get install clang-6.0 lldb-6.0 lld-6.0
apt-get install libllvm-6.0-ocaml-dev libllvm6.0 llvm-6.0 llvm-6.0-dev llvm-6.0-doc llvm-6.0-examples llvm-6.0-runtime
apt-get install clang-6.0 clang-tools-6.0 clang-6.0-doc libclang-common-6.0-dev libclang-6.0-dev libclang1-6.0 clang-format-6.0 python-clang-6.0
apt-get install libfuzzer-6.0-dev
apt-get install lldb-6.0
apt-get install lld-6.0
#
#
#BREW RUN WITOUTH SUDO
exit
#
brew install gcc
brew install git
brew install go
brew install gpg
brew install nodejs
brew install elixir
brew install qemu
