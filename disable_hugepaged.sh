#!/bin/bash

###########################################################
# disable huge pages on debian/ubuntu based Linux systems #
###########################################################

echo "Disabling hugepages..."
echo '0'     | sudo tee /sys/kernel/mm/transparent_hugepage/khugepaged/defrag
echo 'never' | sudo tee /sys/kernel/mm/transparent_hugepage/defrag
# I tend to let the hugepage support enabled...
#echo 'never' | sudo tee /sys/kernel/mm/transparent_hugepage/enabled

echo "=============== State of hugepages on current system ==============="
echo "Current setting for /sys/kernel/mm/transparent_hugepage/khugepaged/defrag"
cat /sys/kernel/mm/transparent_hugepage/khugepaged/defrag
echo "Current setting for /sys/kernel/mm/transparent_hugepage/defrag"
cat /sys/kernel/mm/transparent_hugepage/defrag
echo "Current setting for /sys/kernel/mm/transparent_hugepage/enabled"
cat /sys/kernel/mm/transparent_hugepage/enabled
echo "===================================================================="


###############################
# further links for hugepages #
###############################
# http://forums.fedoraforum.org/showthread.php?t=285246
# https://bugzilla.redhat.com/show_bug.cgi?id=879801
# http://unix.stackexchange.com/questions/161858/arch-linux-becomes-unresponsive-from-khugepaged
