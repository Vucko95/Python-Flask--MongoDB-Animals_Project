## COPY TXT BEFORE
sudo yum install wget -y
# sudo wget https://repo.mongodb.org/yum/redhat/6/mongodb-org/6.0/x86_64/RPMS/mongodb-database-tools-100.5.4.x86_64.rpm
# sudo rpm -i mongodb-database-tools-100.5.4.x86_64.rpm
sudo yum install cyrus-sasl -y
sudo dnf install cyrus-sasl-gssapi.x86_64 -y
sudo yum install cyrus-sasl-plain.x86_64 -y
sudo yum install -y mongodb-org

# USEFULL LINK
# vim /etc/yum.repos.d/mongodb.repo
# https://www.liquidweb.com/kb/how-to-install-mongodb-on-centos-7/
## LOG FILE LOCATION
# /var/log/mongodb/mongod.log