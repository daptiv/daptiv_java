Vagrant.configure('2') do |config|
  if ENV['linux']
    config.vm.box_url = 'http://vagrantboxes.hq.daptiv.com/vagrant/boxes/virtualbox_ubuntu-14.04_chef-12.4.1_1.0.7.box'
    config.vm.box = 'virtualbox_ubuntu-14.04_chef-12.4.1_1.0.7'
  else
    config.vm.box = 'daptiv/windows2012r2_chef11'
    config.vm.communicator = :winrm
  end
  config.vm.provision :chef_solo do |chef|
    chef.add_recipe "minitest-handler"
    chef.add_recipe "daptiv_java::default"
  end
end
