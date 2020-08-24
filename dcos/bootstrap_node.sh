#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset
set -o xtrace
# set -eox pipefail #safety for script

echo "===================================================================================="
if [ ! -f dcos_generate_config.sh ]; then
    echo "dcos_generate_config.sh does not exist, downloading now."
    sudo curl -O https://downloads.dcos.io/dcos/stable/dcos_generate_config.sh
fi

echo "Running web installer"
sudo bash dcos_generate_config.sh --web -v

exit 0
echo "===================================================================================="