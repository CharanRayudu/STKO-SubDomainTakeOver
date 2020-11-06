# STKO-SubDomainTakeOver

This script detects the subdomains which are vulnerable to takeover's. 

## Prerequisites:

sudo apt install subfinder

sudo apt install subjack 

sudo apt install golang-go

go get -u -v github.com/lukasikic/subzy

sudo su

cd go/bin/

cp subzy /usr/local/bin


## Installation and Usage:

git clone https://github.com/CharanRayudu/STKO-SubDomainTakeOver.git

cd STKO-SubDomainTakeOver.git

chmod +x STKO.sh

./STKO.sh example.com

