#!/bin/bash

. demo-magic.sh
clear

pe "ssh-copy-id root@192.168.1.218"

wait
clear

cd ../RHEL7-CIS
pe "cat playbook.yml"

wait
clear

pe "ansible-playbook -i 192.168.1.218, -u root playbook.yml"

wait
clear

