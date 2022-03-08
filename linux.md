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

[win]: https://sam.gleske.net/blog/engineering/2021/08/25/windows-on-linux-sena-firmware.html
