<p align="center">

# Ansible Full Stack App Deployment

  <img width="650"  src="banner.png" alt="Material Bread logo">

</p>

## Summary

This project will feature provisioning `FullStack Application` first manually and than using [Ansible Playbooks](https://docs.ansible.com/ansible/latest/user_guide/playbooks_intro.html)

- Manual Installation `[PART 1]`
- Installation with Ansible Playbooks `[PART 2]`

Purpose of this repository is to demonstrate all the benefits that Ansible provides, once playbooks are created.

## Manual Deployment Process

### [MongoDB](https://www.mongodb.com/docs/) Installation and Setup

```
sudo cp /etc/ansible/mongodb.repo /etc/yum.repos.d/mongodb.repo
sudo yum install -y mongodb-org
```

Enable\Start MongoDB

```
sudo systemctl enable mongod
sudo systemctl start mongod
Check status of MongoDB
sudo systemctl status mongod
If there are any issues please check:
journalctl -xe
```

Creating Admin\Application user for MongoDB, instructions in `mongop2.sh`

### Installing Go on `Centos7`

```
wget https://dl.google.com/go/go1.13.linux-amd64.tar.gz
tar -C /usr/local -xvzf go1.13.linux-amd64.tar.gz
```

After installation we need to setup PATH of [Go](https://computingforgeeks.com/install-go-golang-on-centos-rhel-linux/) installation Directory

```
sudo echo "export PATH=$PATH:/usr/local/go/bin" >> /home/vagrant/.bash_profile
source ~/.bash_profile
```

_To be continued...._
