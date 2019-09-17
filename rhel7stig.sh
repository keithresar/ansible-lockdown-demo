#!/bin/bash

. demo-magic.sh
clear

pe "ssh-copy-id root@192.168.1.242"

wait
clear

cd ../RHEL7-STIG
pe "cat local.yml"

wait
clear

pe "ansible-playbook -i 192.168.1.242, -u root local.yml"

wait
clear

