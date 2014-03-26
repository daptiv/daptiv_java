
Vagrant.configure("2") do |config|

  @linux = ENV['linux'] || false

  if @linux
    @install_method = ENV['install_method'] || 'binary'
    config.vm.box_url = 'https://opscode-vm.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_chef-11.2.0.box'
    config.vm.box = 'opscode_ubuntu-12.04_chef-11.2.0'
  else
    @install_method = 'windows'
    config.vm.box_url = 'http://vagrantboxes.hq.daptiv.com/vagrant/boxes/vagrant-windows2008r2.box'
    config.vm.box = 'vagrant-windows2008r2'
    config.vm.guest = :windows
    config.vm.network :forwarded_port, guest: 5985, host: 5985, auto_correct: true
  end

  config.vm.provision :chef_solo do |chef|
    chef.add_recipe "minitest-handler"
    chef.add_recipe "daptiv_java::default"
    chef.add_recipe "daptiv_java::windows" unless @linux
    chef.add_recipe "daptiv_java::linux" if @linux
  end
end
