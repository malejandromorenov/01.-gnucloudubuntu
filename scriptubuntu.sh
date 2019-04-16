#!bin/bash
echo -----------------------------------------
echo ---
echo RUN WITH PRECAUTION, AVAILABLE ONLY LINUX
echo ---
echo -----------------------------------------
#INIT SCRPT WITH SUPERUSER
sudo su
#
sudo su apt-get install ruby-thor
#INSTALL PECL REPOSITORIES
sudo su apt-get install php-pear
#
sudo su apt-get install iptables-persistent
sudo su apt-get install ntp
sudo su apt-get install proot
sudo su apt-get purge upstart
sudo su apt-get install upstart
sudo su apt-get install nmap
sudo su apt-get install nuget
sudo su apt-get install php7.2-cli
#nodejs
sudo su curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh
sudo su bash nodesource_setup.sh
#Basic 
sudo su apt-get install gnupg2
sudo su apt-get install golang-go
sudo su apt-get install alpine
sudo su apt-get install kleopatra
sudo su apt-get install alice
sudo su apt-get install nodejs
sudo su apt-get install yarn
sudo su apt-get install ruby
#GEMS ONLY RUN AFTER INSTALL RUBY
sudo su gem install gitlab-development-kit
sudo su gem install rhc
#
sudo su apt-get install mono-runtime
sudo su apt-get install golang-go
sudo su apt-get install gccgo-go
sudo su apt-get install imagemagick-6.q16
sudo su apt-get install graphicsmagick-imagemagick-compat
sudo su apt-get install imagemagick-6.q16hdr
#BREW IS A MACOSX REPOSITORIES
sudo su apt-get install linuxbrew-wrapper
#ADD TO PATH
echo 'export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"' >>~/.bashrc
echo 'export MANPATH="/home/linuxbrew/.linuxbrew/share/man:$MANPATH"' >>~/.bashrc
echo 'export INFOPATH="/home/linuxbrew/.linuxbrew/share/info:$INFOPATH"' >>~/.bashrc
#
sudo su apt-get install opam
sudo su apt-get install nginx
sudo su apt-get install vagrant
sudo su apt-get install varnish
sudo su apt-get install trash-cli
sudo su apt-get install python-pip
sudo su apt-get install elixir
sudo su apt-get install qemu
sudo su apt-get install apache2-bin
sudo su apt-get install default-jdk
sudo su apt-get install maven
#BD IS DEVELOPER FOR VARIABLES
sudo su apt install mongodb-clients
sudo su apt install mariadb-client-core-10.1
sudo su apt install sqlite
#SQL 2017
sudo su wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo su add-apt-repository "$(wget -qO- https://packages.microsoft.com/config/ubuntu/16.04/mssql-server-2017.list)"
sudo su apt-get update
sudo su apt-get install -y mssql-server
sudo su curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo su curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list | sudo tee /etc/apt/sources.list.d/msprod.list
sudo su apt-get install mssql-tools unixodbc-dev
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
#
sudo su apt-get install mssql-server-agent
sudo su apt-get install -y mssql-server-fts
sudo su apt-get install mssql-server-is
sudo su curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
#Download appropriate package for the OS version
#Choose only ONE of the following, corresponding to your OS version
#Ubuntu 18.04
sudo su curl https://packages.microsoft.com/config/ubuntu/18.04/prod.list > /etc/apt/sources.list.d/mssql-release.list
sudo su  ACCEPT_EULA=Y apt-get install msodbcsql17
# optional: for bcp and sqlcmd
sudo ACCEPT_EULA=Y apt-get install mssql-tools
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
source ~/.bashrc
# optional: for unixODBC development headers
sudo su apt-get install unixodbc-dev
#.net
sudo su wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
sudo su  dpkg -i packages-microsoft-prod.deb
sudo su apt-get install apt-transport-https
sudo su apt-get install dotnet-sdk-2.1
#DOCKER CONTAINER 
sudo su apt-get install apt-transport-https
sudo su apt-get install ca-certificates   
sudo su apt-get install curl   
sudo su apt-get install software-properties-common 
sudo su curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo su add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo su apt-get install docker-ce
sudo su docker run hello-world
#CLOUD INIT NOVEMBER 2017
#AZURE
AZ_REPO=$(lsb_release -cs)
echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" | \
sudo tee /etc/apt/sources.list.d/azure-cli.list
sudo su curl -L https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo su sudo apt-get update
sudo su apt-get install apt-transport-https azure-cli
#IBMCLOUD
curl -fsSL https://clis.ng.bluemix.net/install/linux | sh
ibmcloud plugin repo-plugins 'IBM Cloud'
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
ibmcloud plugin install doi
ibmcloud plugin install tke
ibmcloud plugin install key-protect
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
    sudo su curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - && \
    sudo su apt-get update -y && apt-get install google-cloud-sdk -y
sudo su apt-get install google-cloud-sdk-app-engine-python-extras
sudo su apt-get install google-cloud-sdk-app-engine-python
sudo su apt-get install google-cloud-sdk-app-engine-php
sudo su apt-get install google-cloud-sdk-app-engine-java
sudo su apt-get install google-cloud-sdk-docker-credential-gcr
sudo su apt-get install google-cloud-sdk-container-builder-local
sudo su apt-get install google-cloud-sdk-cloud-build-local
sudo su apt-get install google-cloud-sdk-emulator-reverse-proxy
sudo su apt-get install google-cloud-sdk-cloud_sql_proxy
sudo su apt-get install google-cloud-sdk-pubsub-emulator
sudo su apt-get install google-cloud-sdk-gcd-emulator
sudo su apt-get install google-cloud-sdk-cloud-datastore-emulator
sudo su apt-get install google-cloud-sdk-datalab
sudo su apt-get install google-cloud-sdk-app-engine-go
sudo su apt-get install google-cloud-sdk-cbt
#PPUPPET
sudo su wget https://apt.puppetlabs.com/puppetlabs-release-pc1-xenial.deb
sudo su dpkg -i puppetlabs-release-pc1-xenial.deb
sudo apt update
gpg --keyserver pgp.mit.edu --recv-key 7F438280EF8D349F
gpg --list-key --fingerprint 7F438280EF8D349F
sudo apt-get update
sudo su apt-get install pdk
#AWS
pip install awscli --upgrade --user
#Update December 2018
#RUST
sudo su curl https://sh.rustup.rs -sSf | sh
#LLVM
sudo su wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key|sudo apt-key add -
# Fingerprint: 6084 F3CF 814B 57C1 CF12 EFD5 15CF 4D18 AF4F 7421
sudo su apt-get install clang-6.0 lldb-6.0 lld-6.0
sudo su apt-get install libllvm-6.0-ocaml-dev libllvm6.0 llvm-6.0 llvm-6.0-dev llvm-6.0-doc llvm-6.0-examples llvm-6.0-runtime
sudo su apt-get install clang-6.0 clang-tools-6.0 clang-6.0-doc libclang-common-6.0-dev libclang-6.0-dev libclang1-6.0 clang-format-6.0 python-clang-6.0
sudo su apt-get install libfuzzer-6.0-dev
sudo su apt-get install lldb-6.0
sudo su apt-get install lld-6.0
#
#CLOUD FOUNDRY
# ...first add the Cloud Foundry Foundation public key and package repository to your system
sudo su wget -q -O - https://packages.cloudfoundry.org/debian/cli.cloudfoundry.org.key | sudo apt-key add -
echo "deb https://packages.cloudfoundry.org/debian stable main" | sudo tee /etc/apt/sources.list.d/cloudfoundry-cli.list
# ...then, update your local package index, then finally install the cf CLI
sudo apt-get update
sudo apt-get install cf-cli
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
