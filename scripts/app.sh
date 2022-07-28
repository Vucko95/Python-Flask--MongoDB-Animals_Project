sudo yum install epel-release -y
sudo yum install ansible -y
sudo yum install vim -y
yum install net-tools -y
sudo cat /home/vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
sudo chmod 400 /home/vagrant/.ssh/id_rsa