# sudo export PATH=$PATH:/home/vagrant/go/bin
# sudo  PATH=$PATH:/home/vagrant/go/bin

sudo echo "export PATH=$PATH:/usr/local/go/bin" >> /home/vagrant/.bash_profile
export PATH
export PATH=$PATH:/usr/local/go/bin
export GOROOT=/home/vagrant/go
export GOPATH=/usr/local/go/bin
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin


source ~/.bash_profile


sudo yum install git -y

sudo chown -R vagrant:vagrant /usr/local/go/

#CORRECT COMMAND
go get go.mongodb.org/mongo-driver/mongo

go get -u github.com/gorilla/mux