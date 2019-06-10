#!bin/bash
echo -----------------------------------------
echo ---
echo RUN WITH PRECAUTION, AVAILABLE ONLY LINUX
echo ---
echo -----------------------------------------
#INIT SCRPT WITH SUPERUSER
#
sudo apt-get install ruby-thor -y
#INSTALL PECL REPOSITORIES -y
sudo apt-get install php-pear -y
#
sudo apt-get install iptables-persistent -y 
sudo apt-get install ntp -y 
sudo apt-get install proot -y
sudo apt-get purge upstart
sudo apt-get install upstart -y 
sudo apt-get install nmap -y 
sudo apt-get install nuget -y 
sudo apt-get install php7.2-cli -y
#nodejs
sudo curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh -y
sudo bash nodesource_setup.sh -y 
#Basic 
sudo apt-get install gnupg2 -y 
sudo apt-get install golang-go -y
sudo apt-get install alpine -y
sudo apt-get install kleopatra -y
sudo apt-get install alice -y
sudo apt-get install nodejs -y
sudo apt-get install yarn -y
sudo apt-get install ruby -y
#GEMS ONLY RUN AFTER INSTALL RUBY
sudo gem install gitlab-development-kit
sudo gem install rhc
#
sudo apt-get install mono-runtime -y
sudo apt-get install golang-go -y
sudo apt-get install gccgo-go -y
sudo apt-get install imagemagick-6.q16 -y
sudo apt-get install graphicsmagick-imagemagick-compat -y
sudo apt-get install imagemagick-6.q16hdr -y
#BREW IS A MACOSX REPOSITORIES
sudo apt-get install linuxbrew-wrapper -y
#ADD TO PATH
echo 'export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"' >>~/.bashrc
echo 'export MANPATH="/home/linuxbrew/.linuxbrew/share/man:$MANPATH"' >>~/.bashrc
echo 'export INFOPATH="/home/linuxbrew/.linuxbrew/share/info:$INFOPATH"' >>~/.bashrc
#
sudo apt-get install opam -y
sudo apt-get install nginx -y
sudo apt-get install vagrant -y
sudo apt-get install varnish -y
sudo apt-get install trash-cli -y
sudo apt-get install python-pip -y
sudo apt-get install elixir -y
sudo apt-get install qemu -y
sudo apt-get install apache2-bin -y
sudo apt-get install default-jdk -y
sudo apt-get install maven -y
#BD IS DEVELOPER FOR VARIABLES
sudo apt install mongodb-clients
sudo apt install mariadb-client-core-10.1
sudo apt install sqlite
#SQL 2017
sudo wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo add-apt-repository "$(wget -qO- https://packages.microsoft.com/config/ubuntu/16.04/mssql-server-2017.list)"
sudo apt-get update
sudo apt-get install -y mssql-server
sudo curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list | sudo tee /etc/apt/sources.list.d/msprod.list
sudo apt-get install mssql-tools unixodbc-dev
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
#
sudo apt-get install mssql-server-agent
sudo apt-get install -y mssql-server-fts
sudo apt-get install mssql-server-is
sudo curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
#Download appropriate package for the OS version
#Choose only ONE of the following, corresponding to your OS version
#Ubuntu 18.04
sudo curl https://packages.microsoft.com/config/ubuntu/18.04/prod.list > /etc/apt/sources.list.d/mssql-release.list
sudo ACCEPT_EULA=Y apt-get install msodbcsql17
# optional: for bcp and sqlcmd
sudo ACCEPT_EULA=Y apt-get install mssql-tools
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
source ~/.bashrc
# optional: for unixODBC development headers
sudo apt-get install unixodbc-dev
#.net
sudo wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
sudo  dpkg -i packages-microsoft-prod.deb
sudo apt-get install apt-transport-https
sudo apt-get install dotnet-sdk-2.1
#DOCKER CONTAINER 
sudo apt-get install apt-transport-https
sudo apt-get install ca-certificates   
sudo apt-get install curl   
sudo apt-get install software-properties-common 
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo docker run hello-world
#CLOUD INIT NOVEMBER 2017
#AZURE
AZ_REPO=$(lsb_release -cs)
echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" |
sudo tee /etc/apt/sources.list.d/azure-cli.list
sudo curl -L https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo sudo apt-get update
sudo apt-get install apt-transport-https azure-cli
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
    sudo curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - && \
    sudo apt-get update -y && apt-get install google-cloud-sdk -y
sudo apt-get install google-cloud-sdk-app-engine-python-extras -y
sudo apt-get install google-cloud-sdk-app-engine-python -y 
sudo apt-get install google-cloud-sdk-app-engine-php -y
sudo apt-get install google-cloud-sdk-app-engine-java -y
sudo apt-get install google-cloud-sdk-docker-credential-gcr -y
sudo apt-get install google-cloud-sdk-container-builder-local -y
sudo apt-get install google-cloud-sdk-cloud-build-local -y 
sudo apt-get install google-cloud-sdk-emulator-reverse-proxy -y
sudo apt-get install google-cloud-sdk-cloud_sql_proxy -y
sudo apt-get install google-cloud-sdk-pubsub-emulator -y
sudo apt-get install google-cloud-sdk-gcd-emulator -y
sudo apt-get install google-cloud-sdk-cloud-datastore-emulator -y
sudo apt-get install google-cloud-sdk-datalab -y
sudo apt-get install google-cloud-sdk-app-engine-go -y
sudo apt-get install google-cloud-sdk-cbt -y
#PPUPPET
sudo wget https://apt.puppetlabs.com/puppetlabs-release-pc1-xenial.deb
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
sudo su curl https://sh.rustup.rs -sSf | sh
#LLVM
sudo su wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key|sudo apt-key add -
# Fingerprint: 6084 F3CF 814B 57C1 CF12 EFD5 15CF 4D18 AF4F 7421
sudo apt-get install clang-6.0 lldb-6.0 lld-6.0
sudo apt-get install libllvm-6.0-ocaml-dev libllvm6.0 llvm-6.0 llvm-6.0-dev llvm-6.0-doc llvm-6.0-examples llvm-6.0-runtime
sudo apt-get install clang-6.0 clang-tools-6.0 clang-6.0-doc libclang-common-6.0-dev libclang-6.0-dev libclang1-6.0 clang-format-6.0 python-clang-6.0
sudo apt-get install libfuzzer-6.0-dev
sudo apt-get install lldb-6.0
sudo apt-get install lld-6.0
#
#CLOUD FOUNDRY
# ...first add the Cloud Foundry Foundation public key and package repository to your system
sudo wget -q -O - https://packages.cloudfoundry.org/debian/cli.cloudfoundry.org.key | sudo apt-key add -
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
brew install jq
brew install gnu-go
#Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
#Kubectl
sudo apt-get update && sudo apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl
sudo apt-get install virtualbox-qt
sudo apt-get install qemu-kvm
sudo apt-get install python3-venv
