# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "halvards/lubuntu1604"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  config.vm.provider "virtualbox" do |vb|
   # Display the GUI when booting the machine
   vb.gui = true

   # Customize the amount of memory on the VM:
   vb.memory = "1024"

   # Use 2 CPUs
   vb.cpus = 1

   # Adds filters for specific USB devices to the VM
   vb.customize ['modifyvm', :id, '--usb', 'on']
   vb.customize ['modifyvm', :id, '--usbehci', 'on']
   vb.customize ['usbfilter', 'add', '0', '--target', :id, '--name', 'STLink', '--vendorid', '0x0483', '--productid', '0x3748']
   vb.customize ['usbfilter', 'add', '0', '--target', :id, '--name', 'Olimex OpenOCD JTAG ARM-USB-TINY-H', '--vendorid', '0x15BA', '--productid', '0x002a']
   vb.customize ['usbfilter', 'add', '0', '--target', :id, '--name', 'Olimex OpenOCD JTAG ARM-USB-OCD-H', '--vendorid', '0x15BA', '--productid', '0x002b']
   vb.customize ['usbfilter', 'add', '0', '--target', :id, '--name', 'Olimex OpenOCD JTAG', '--vendorid', '0x15BA', '--productid', '0x0003']
   vb.customize ['usbfilter', 'add', '0', '--target', :id, '--name', 'AVRISP mkII', '--vendorid', '0x03EB', '--productid', '0x2104']
   vb.customize ['usbfilter', 'add', '0', '--target', :id, '--name', 'FTDI serial adapter', '--vendorid', '0x0403', '--productid', '0x6001']
  end

  ############################################################
    # Oh My ZSH Install section - sets up a nice shell environment

    # Install git and zsh prerequisites
    config.vm.provision :shell, inline: "sudo apt-get update -qq"
    config.vm.provision :shell, inline: "apt-get -y install git"
    config.vm.provision :shell, inline: "apt-get -y install zsh"

    # Clone Oh My Zsh from the git repo
    config.vm.provision :shell, privileged: false,
      inline: "git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh"

    # Copy in the default .zshrc config file
    config.vm.provision :shell, privileged: false,
      inline: "cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc"

    # Change the vagrant user's shell to use zsh
    config.vm.provision :shell, inline: "chsh -s /bin/zsh vagrant"
    ############################################################

  # installs the basic development packages and requirements (python, cmake, etc)
  config.vm.provision :shell, path: "install-base-tools.sh"

  #install platformio
  config.vm.provision :shell, path: "install-platformio.sh"

  #installs the arm toolchain and
  #config.vm.provision :shell, privileged: false, path: "install-arm-tools.sh"

  #add selected projects to the synced_folder
  config.vm.provision :shell, path: "clone_projects.sh"

end
