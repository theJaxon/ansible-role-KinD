Vagrant.configure("2") do |config|
  config.vm.box = "bento/centos-8.2"
  config.vm.hostname = "KinD"
  config.vm.box_check_update = false
  config.vm.synced_folder ".", "/vagrant", type: "rsync"
  config.vm.provision "shell", path: "KinD.sh"
  config.vm.provider "virtualbox" do |vb|
    vb.cpus = 2
    vb.memory = 4096
  end
end
