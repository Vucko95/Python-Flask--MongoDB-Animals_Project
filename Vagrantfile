Vagrant.configure("2") do |config| 
  config.vm.box = "centos/7"

  config.vm.define "app" do |app|
    app.vm.hostname = "app.local" 
    app.vm.network "private_network", ip: "192.168.6.1"
    app.vm.network :forwarded_port, host: 8080, guest: 80, id: "app"
    app.vm.provision "file", source: "keys/id_rsa.pub", destination: "~/.ssh/id_rsa.pub"
    app.vm.provision "file", source: "keys/id_rsa", destination: "~/.ssh/id_rsa"
    app.vm.provision "shell", path: "scripts/app.sh"
    app.vm.synced_folder "ansible/", "/etc/ansible"
  end 
  config.vm.define "db" do |db|
    db.vm.hostname = "db.local" 
    db.vm.network "private_network", ip: "192.168.6.11" 
    db.vm.provision "file", source: "keys/id_rsa.pub", destination: "~/.ssh/id_rsa.pub"
    db.vm.provision "shell", path: "scripts/db.sh"
  end 
end 