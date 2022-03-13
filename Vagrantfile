Vagrant.configure("2") do |config|
  config.vm.box = "windows/11dev"
  config.vm.box_check_update = false
  # Windows remote management settings
  config.vm.guest = :windows
  config.vm.communicator = "winrm"
  config.winrm.username = "User"
  config.winrm.password = "Passw0rd!"
  if Vagrant.has_plugin?("vagrant-vbguest") then
    config.vbguest.auto_update = false
  end

  config.vm.provider "virtualbox" do |vb|
    # Hardware settings
    vb.gui = true
    vb.cpus = "4"
    vb.memory = "8192"

    # Operating system
    vb.customize ["modifyvm", :id, "--ostype", 'Windows10_64']

    # Video Settings with remote desktop disabled
    vb.customize [ "modifyvm", :id,
      "--vram", "256",
      "--accelerate3d", "on",
      "--vrde", "off",
      "--graphicscontroller", "vboxsvga",
      "--nested-hw-virt", "on"]


    # DVD Drive for VBox Guest Additions
    #vb.customize ["storageattach", :id, "--storagectl", "IDE Controller", "--port", "0", "--device", "1", "--type", "dvddrive", "--medium", "emptydrive"]

    # USB 3 support; it should only run initially
    #unless File.exists? "usb-setup-complete"
    #  vb.customize ["storagectl", :id, "--name", "USB", "--add", "usb", "--controller", "USB", "--hostiocache", "on"]
    #  vb.customize ["modifyvm", :id, "--usb", "on", "--usbxhci", "on"]
    #end
  end

  # Switch logic for USB 3 support
  config.trigger.after :up do |trigger|
    trigger.info = "Checking usb-setup-complete..."
    trigger.run = {inline: "bash -c '[ -f usb-setup-complete ] || touch usb-setup-complete'"}
  end
  config.trigger.after :destroy do |trigger|
    trigger.info = "Removing usb-setup-complete..."
    trigger.run = {inline: "bash -c '[ ! -f usb-setup-complete ] || rm -f usb-setup-complete'"}
  end
end
