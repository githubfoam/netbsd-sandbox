#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset
set -o xtrace
# set -eox pipefail #safety for script

echo "===================================================================================="
cd "$(dirname "$0")"

ssh-keygen -t rsa -N "" -f id_rsa

mv id_rsa.pub ../shared

mv id_rsa ../files 

exit 0
echo "===================================================================================="