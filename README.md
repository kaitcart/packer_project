# packer_project
Creating vagrant boxes with Packer. 

# Prereqs
Packer v0.11.0

VirtualBox

Vagrant v1.8.6

# Brief explanation 
`example.json` is the Packer template. 

`setup.sh` is a script that installs Riak TS 1.4 on CentOS 6

`http/kickstart` is a linux kickstart script that specifies installation variables and scripts

#Variables
The iso and iso md5 sum 

Shell scripts

kickstart script

boot_commands in the packer template. Note they will need to be updated for different Operating Systems and OS versions. 

# Required

Vbox guest additions

```
      "sudo mkdir /tmp/vboxguest",
      "sudo mount -t iso9660 -o loop /home/vagrant/VBoxGuestAdditions.iso /tmp/vboxguest",
      "sudo ln -s /opt/VBoxGuestAdditions-4.3.10/lib/VBoxGuestAdditions /usr/lib/VBoxGuestAdditions",
      "sudo yum -y groupinstall 'Development Tools'",
      "cd /tmp/vboxguest",
      "sudo ./VBoxLinuxAdditions.run",
      "cd /tmp",
      "sudo umount /tmp/vboxguest",
      "sudo rmdir /tmp/vboxguest",
      "rm /home/vagrant/VBoxGuestAdditions.iso",
      "sudo yum install -y curl",
      "echo Image Provisioned!"
```

