# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box_check_update = false

  # vbox template for all vagranth instances
  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.memory = "512"
    vb.cpus = 2
  end
             config.vm.define "vg-netbsd-01" do |k8scluster|
                k8scluster.vm.box = "NetBSD/NetBSD-7.0"
                k8scluster.vm.box_version = "1.0.0"
                k8scluster.vm.hostname = "vg-netbsd-01"
                k8scluster.vm.network "private_network", ip: "192.168.50.14"
                #Disabling the default /vagrant share can be done as follows:
                k8scluster.vm.synced_folder ".", "/vagrant", disabled: true
                k8scluster.vm.provider "virtualbox" do |vb|
                    vb.name = "vbox-netbsd-01"
                    vb.memory = "4096"
                end

                k8scluster.vm.provision :shell, path: "provision/bootstrap.sh"

                # k8scluster.vm.provision "ansible_local" do |ansible|
                #   # https://www.vagrantup.com/docs/provisioning/ansible_common.html Shared Ansible Options
                #   ansible.become = true
                #   ansible.compatibility_mode = "2.0"
                #   ansible.version = "2.9.9"
                #   ansible.extra_vars = {
                #           node_ip: "192.168.50.12"
                #       }
                #   ansible.playbook = "provisioning/deploy.yml"
                # end

              end

             config.vm.define "vg-netbsd-02" do |k8scluster|
                k8scluster.vm.box = "NetBSD/NetBSD-8.0"
                k8scluster.vm.hostname = "vg-netbsd-02"
                #Disabling the default /vagrant share can be done as follows:
                k8scluster.vm.synced_folder ".", "/vagrant", disabled: true
                k8scluster.vm.provider "virtualbox" do |vb|
                    vb.name = "vbox-netbsd-02"
                    vb.memory = "4096"
                end

                k8scluster.vm.provision :shell, path: "scripts/deploy-netbsd-openvpn.sh"

                # k8scluster.vm.provision "ansible_local" do |ansible|
                #   # https://www.vagrantup.com/docs/provisioning/ansible_common.html Shared Ansible Options
                #   ansible.become = true
                #   ansible.compatibility_mode = "2.0"
                #   ansible.version = "2.9.9"
                #   ansible.extra_vars = {
                #           node_ip: "192.168.50.12"
                #       }
                #   ansible.playbook = "provisioning/deploy.yml"
                # end

              end

             config.vm.define "vg-netbsd-03" do |k8scluster|
                k8scluster.vm.box = "generic/netbsd9"
                k8scluster.vm.hostname = "vg-netbsd-03"

                
                #Disabling the default /vagrant share can be done as follows:
                k8scluster.vm.synced_folder ".", "/vagrant", disabled: true
                k8scluster.vm.provider "virtualbox" do |vb|
                    vb.name = "vbox-netbsd-03"
                    vb.memory = "1024"
                end

                k8scluster.vm.provision :shell, path: "provision/bootstrap.sh"

                # k8scluster.vm.provision "ansible_local" do |ansible|
                #   # https://www.vagrantup.com/docs/provisioning/ansible_common.html Shared Ansible Options
                #   ansible.become = true
                #   ansible.compatibility_mode = "2.0"
                #   ansible.version = "2.9.9"
                #   ansible.extra_vars = {
                #           node_ip: "192.168.50.12"
                #       }
                #   ansible.playbook = "provisioning/deploy.yml"
                # end

              end

             config.vm.define "vg-netbsd-04" do |k8scluster|
                k8scluster.vm.box = "generic/netbsd8"
                k8scluster.vm.hostname = "vg-netbsd-04"
                k8scluster.vm.network "private_network", ip: "192.168.50.15"
                #Disabling the default /vagrant share can be done as follows:
                k8scluster.vm.synced_folder ".", "/vagrant", disabled: true
                k8scluster.vm.provider "virtualbox" do |vb|
                    vb.name = "vbox-netbsd-04"
                    vb.memory = "4096"
                end

                k8scluster.vm.provision :shell, path: "provision/bootstrap.sh"

                # k8scluster.vm.provision "ansible_local" do |ansible|
                #   # https://www.vagrantup.com/docs/provisioning/ansible_common.html Shared Ansible Options
                #   ansible.become = true
                #   ansible.compatibility_mode = "2.0"
                #   ansible.version = "2.9.9"
                #   ansible.extra_vars = {
                #           node_ip: "192.168.50.12"
                #       }
                #   ansible.playbook = "provisioning/deploy.yml"
                # end

              end

end
