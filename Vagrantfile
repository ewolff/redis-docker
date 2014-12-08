Vagrant.configure("2") do |config|
  config.vm.box = "chef/ubuntu-14.04"
  config.vm.network "forwarded_port", guest: 6379, host: 6379

  config.vm.provision "docker" do |d|
    d.build_image "--tag=ubuntu-update /vagrant/ubuntu-update"
    d.build_image "--tag=redis /vagrant/redis"
  end

end
