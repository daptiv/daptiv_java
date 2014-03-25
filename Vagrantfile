
Vagrant.configure("2") do |config|
  config.vm.guest = :windows
  config.vm.network :forwarded_port, guest: 5985, host: 5985, auto_correct: true
  config.vm.box = "vagrant-windows2008r2"
  config.vm.box_url = "http://vagrantboxes.hq.daptiv.com/vagrant/boxes/vagrant-windows2008r2.box"
  config.vm.provider :virtualbox do |v|
    v.gui = true
  end
  config.vm.provision :chef_solo do |chef|
    chef.add_recipe "chef_handler"
    chef.add_recipe "minitest-handler"
    chef.add_recipe "daptiv_java"
  end
end
