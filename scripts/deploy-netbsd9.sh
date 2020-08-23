#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset
set -o xtrace
# set -eox pipefail #safety for script

echo "========================================================================================="
vagrant plugin install vagrant-libvirt #The vagrant-libvirt plugin is required when using KVM on Linux
vagrant plugin install vagrant-mutate #Convert vagrant boxes to work with different providers

# https://app.vagrantup.com/generic/boxes/netbsd9
vagrant box add "generic/netbsd9" --provider=virtualbox
vagrant init --template Vagrantfile.provision.bash.netbsd.erb
vagrant up --provider=libvirt "vg-netbsd-03"

vagrant box list #veridy installed boxes
virsh list --all #show all running KVM/libvirt VMs

echo "========================================================================================="
