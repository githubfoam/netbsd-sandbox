#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset
set -o xtrace
# set -eox pipefail #safety for script

echo "========================================================================================="
vagrant plugin install vagrant-libvirt #The vagrant-libvirt plugin is required when using KVM on Linux
vagrant plugin install vagrant-mutate #Convert vagrant boxes to work with different providers


vagrant plugin install vagrant-hostsupdater 
vagrant plugin install vagrant-vbguest
# Download DC/OS installation file
curl -O https://downloads.dcos.io/dcos/stable/dcos_generate_config.sh 
# # https://app.vagrantup.com/centos/boxes/8 # Ansible provision OK
vagrant box add "centos/8" --provider=libvirt
vagrant init --template Vagrantfile.dcos.provision.puppet.erb
vagrant up --provider=libvirt
# curl http://192.168.33.11 #master UI


# https://app.vagrantup.com/NetBSD/boxes/NetBSD-8.0
# vagrant box add "NetBSD/NetBSD-7.0" --provider=virtualbox
# vagrant mutate "NetBSD/NetBSD-7.0" libvirt
# vagrant init --template Vagrantfile.provision.bash.netbsd.erb
# vagrant up --provider=libvirt "vg-netbsd-01"

# https://app.vagrantup.com/NetBSD/boxes/NetBSD-8.0
# vagrant box add "NetBSD/NetBSD-8.0" --provider=virtualbox
# vagrant mutate "NetBSD/NetBSD-8.0" libvirt
# vagrant init --template Vagrantfile.provision.bash.netbsd.erb
# vagrant up --provider=libvirt "vg-netbsd-02"
# vagrant destroy -f "vg-netbsd-02"
# rm Vagrantfile
# vagrant ssh vgnode04 -c "hostnamectl"

vagrant box list #veridy installed boxes
#A Vagrant environment or target machine is required to run this
# vagrant status #Check the status of the VMs to see that none of them have been created yet
virsh list --all #show all running KVM/libvirt VMs
# vagrant destroy -f "vg-compute-05"


echo "========================================================================================="
