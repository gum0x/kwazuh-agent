#!/bin/bash


/var/ossec/bin/agent-auth -m $MANAGER_IP 
sed -E "s/MANAGER_IP/$MANAGER_IP/g" -i /var/ossec/etc/ossec.conf
/var/ossec/bin/ossec-control start
/var/ossec/bin/ossec-control restart
while true; do sleep 30000 ; done
