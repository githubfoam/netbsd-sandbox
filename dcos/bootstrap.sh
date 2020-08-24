#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset
set -o xtrace
# set -eox pipefail #safety for script

# Install Dependencies
sudo yum upgrade --assumeyes --tolerant
sudo yum update --assumeyes
sudo yum install -y unzip

# Configuring and restarting Docker service
modprobe overlay

sudo tee /etc/yum.repos.d/docker.repo <<-'EOF'
[dockerrepo]
name=Docker Repository
baseurl=https://yum.dockerproject.org/repo/main/centos/$releasever/
enabled=1
gpgcheck=1
gpgkey=https://yum.dockerproject.org/gpg
EOF

sudo mkdir -p /etc/systemd/system/docker.service.d && sudo tee /etc/systemd/system/docker.service.d/override.conf <<- EOF
[Service]
ExecStart=
ExecStart=/usr/bin/dockerd --storage-driver=overlay
EOF

sudo yum install -y docker-engine-1.13.1 docker-engine-selinux-1.13.1
sudo systemctl start docker
sudo systemctl enable docker

# Disable selinux
sudo setenforce Permissive
sudo echo 'SELINUX=disabled' >> /etc/sysconfig/selinux

  echo "===================================================================================="
                        hostnamectl status
  echo "===================================================================================="
  echo "         \   ^__^                                                                  "
  echo "          \  (oo)\_______                                                          "
  echo "             (__)\       )\/\                                                      "
  echo "                 ||----w |                                                         "
  echo "                 ||     ||                                                         "
  echo "===================================================================================="
  
