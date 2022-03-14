# Ubuntu 20.04 setup

I followed [this article][win] initially but encountered some issues for Ubuntu 20.04.

Install virtualbox and vagrant.

    apt install virtualbox vagrant virtualbox-dkms virtualbox-ext-pack virtualbox-guest-additions-iso virtualbox-qt

I got vagrant errors when attempting to install the MSEdge box but renaming it
to be without spaces resoved the issue.

    mv *.box win10.box
    vagrant box add win10.box --name windows/10edge

Install additional vagrant plugins

    vagrant plugin install winrm
    vagrant plugin install winrm-fs
    vagrant plugin install winrm-elevated

# Download Windows 11 and import it to Vagrant

1. [Download Windows 11][w11].
2. Open the OVA in VirtualBox via `File > Import Appliance`.
3. Export the box for Vagrant.
   ```
   vagrant package --base 463e93bd-a8f9-4779-bbfb-91a02fdbd5cd --output win11.box
   vagrant box add win11.box --name 'windows/11dev'
   ```

[w11]: https://developer.microsoft.com/en-us/windows/downloads/virtual-machines/

# Booting Windows

    vagrant up

1. Enter `Passw0rd!` as the password for IEUser.
2. Press windows key and search for `cmd`.
3. Right click and run `cmd` as Administrator.
4. Start and permanently enable WinRM so Vagrant can remotely manage the
   machine.
   ```
   WinRM quickconfig
   sc config WinRM start=auto
   ```

# Install Windows Updates

> **Important!** This step is both tedious and important.

Before installing any developer software be sure to install all Windows updates.
This will take several reboots and several times checking for and installing
updates.

1. Press windows key and search `update`
2. Click `Check for Updates`
3. Click install updates
4. Reboot when prompted

Keep performing the above steps until you are up to date and have no more
Windows updates.

# Install dev tools

Install in the following order:

1. Docker
2. VSCode
3. Git (optionally GH Desktop)

VSCode has helpful setup options for Docker and Git has setup options for
VSCode.  If you install them out of order then it's up to you to figure out how
you want it configured.

[win]: https://sam.gleske.net/blog/engineering/2021/08/25/windows-on-linux-sena-firmware.html
