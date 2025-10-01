#!/bin/bash

# For DELL system log collection

#########################
# pre-install S/W
# - OMSA (1,2,3,4,7,9)
# - ipmitool
#########################


rm -rf all_log_dell.txt
sleep 2


echo "===========================================================================" >> all_log_dell.txt
echo " `date` " >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt

echo "===========================================================================" >> all_log_dell.txt
echo "(01-01) omreport chassis" >> all_log_dell.txt
echo "/opt/dell/srvadmin/bin/omreport chassis" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
/opt/dell/srvadmin/bin/omreport chassis >> all_log_dell.txt
sleep 2
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt


echo "===========================================================================" >> all_log_dell.txt
echo "(01-02) omreport system summary" >> all_log_dell.txt
echo "/opt/dell/srvadmin/bin/omreport system summary" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
/opt/dell/srvadmin/bin/omreport system summary >> all_log_dell.txt
sleep 2
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt

echo "===========================================================================" >> all_log_dell.txt
echo "(01-03) omreport chassis info" >> all_log_dell.txt
echo "/opt/dell/srvadmin/bin/omreport chassis info" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
/opt/dell/srvadmin/bin/omreport chassis info >> all_log_dell.txt
sleep 2
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt


echo "===========================================================================" >> all_log_dell.txt
echo "(01-04) omreport chassis biossetup" >> all_log_dell.txt
echo "/opt/dell/srvadmin/bin/omreport chassis biossetup" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
/opt/dell/srvadmin/bin/omreport chassis biossetup >> all_log_dell.txt
sleep 2
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt


echo "===========================================================================" >> all_log_dell.txt
echo "(01-05) omreport chassis firmware" >> all_log_dell.txt
echo "/opt/dell/srvadmin/bin/omreport chassis firmware" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
/opt/dell/srvadmin/bin/omreport chassis firmware >> all_log_dell.txt
sleep 2
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt


echo "===========================================================================" >> all_log_dell.txt
echo "(01-06) omreport chassis fru" >> all_log_dell.txt
echo "/opt/dell/srvadmin/bin/omreport chassis fru" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
/opt/dell/srvadmin/bin/omreport chassis fru >> all_log_dell.txt
sleep 2
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt


echo "===========================================================================" >> all_log_dell.txt
echo "(01-07) omreport chassis fans" >> all_log_dell.txt
echo "/opt/dell/srvadmin/bin/omreport chassis fans" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
/opt/dell/srvadmin/bin/omreport chassis fans >> all_log_dell.txt
sleep 2
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt


echo "===========================================================================" >> all_log_dell.txt
echo "(01-08) omreport chassis pwrmonitoring" >> all_log_dell.txt
echo "/opt/dell/srvadmin/bin/omreport chassis pwrmonitoring" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
/opt/dell/srvadmin/bin/omreport chassis pwrmonitoring >> all_log_dell.txt
sleep 2
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt


echo "===========================================================================" >> all_log_dell.txt
echo "(01-09) omreport chassis pwrsupplies" >> all_log_dell.txt
echo "/opt/dell/srvadmin/bin/omreport chassis pwrsupplies" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
/opt/dell/srvadmin/bin/omreport chassis pwrsupplies >> all_log_dell.txt
sleep 2
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt


echo "===========================================================================" >> all_log_dell.txt
echo "(01-10) omreport chassis processors" >> all_log_dell.txt
echo "/opt/dell/srvadmin/bin/omreport chassis processors" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
/opt/dell/srvadmin/bin/omreport chassis processors >> all_log_dell.txt
sleep 2
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt


echo "===========================================================================" >> all_log_dell.txt
echo "(01-11) omreport chassis memory" >> all_log_dell.txt
echo "/opt/dell/srvadmin/bin/omreport chassis memory" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
/opt/dell/srvadmin/bin/omreport chassis memory >> all_log_dell.txt
sleep 2
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt


echo "===========================================================================" >> all_log_dell.txt
echo "(01-12) omreport chassis nics" >> all_log_dell.txt
echo "/opt/dell/srvadmin/bin/omreport chassis nics" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
/opt/dell/srvadmin/bin/omreport chassis nics >> all_log_dell.txt
sleep 2
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt


echo "===========================================================================" >> all_log_dell.txt
echo "(01-13) omreport chassis temps" >> all_log_dell.txt
echo "/opt/dell/srvadmin/bin/omreport chassis temps" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
/opt/dell/srvadmin/bin/omreport chassis temps >> all_log_dell.txt
sleep 2
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt


echo "===========================================================================" >> all_log_dell.txt
echo "(01-14) omreport chassis remoteaccess" >> all_log_dell.txt
echo "/opt/dell/srvadmin/bin/omreport chassis remoteaccess" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
/opt/dell/srvadmin/bin/omreport chassis remoteaccess >> all_log_dell.txt
sleep 2
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt


echo "===========================================================================" >> all_log_dell.txt
echo "(01-15) omreport chassis batteries" >> all_log_dell.txt
echo "/opt/dell/srvadmin/bin/omreport chassis batteries" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
/opt/dell/srvadmin/bin/omreport chassis batteries >> all_log_dell.txt
sleep 2
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt


echo "===========================================================================" >> all_log_dell.txt
echo "(01-16) omreport system version" >> all_log_dell.txt
echo "/opt/dell/srvadmin/bin/omreport system version" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
/opt/dell/srvadmin/bin/omreport system version >> all_log_dell.txt
sleep 2
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt


echo "===========================================================================" >> all_log_dell.txt
echo "(01-17) omreport system esmlog" >> all_log_dell.txt
echo "/opt/dell/srvadmin/bin/omreport system esmlog" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
/opt/dell/srvadmin/bin/omreport system esmlog >> all_log_dell.txt
sleep 2
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt


echo "===========================================================================" >> all_log_dell.txt
echo "(01-18) omreport system postlog" >> all_log_dell.txt
echo "/opt/dell/srvadmin/bin/omreport system postlog" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
/opt/dell/srvadmin/bin/omreport system postlog >> all_log_dell.txt
sleep 2
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt


echo "===========================================================================" >> all_log_dell.txt
echo "(01-19) omreport system events" >> all_log_dell.txt
echo "/opt/dell/srvadmin/bin/omreport system events" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
/opt/dell/srvadmin/bin/omreport system events >> all_log_dell.txt
sleep 2
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt



echo "===========================================================================" >> all_log_dell.txt
echo "(01-20) omreport storage controller" >> all_log_dell.txt
echo "/opt/dell/srvadmin/bin/omreport storage controller" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
/opt/dell/srvadmin/bin/omreport storage controller >> all_log_dell.txt
sleep 2
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt



echo "===========================================================================" >> all_log_dell.txt
echo "(01-21) omreport storage pdisk controller=0" >> all_log_dell.txt
echo "/opt/dell/srvadmin/bin/omreport storage pdisk controller=0" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
/opt/dell/srvadmin/bin/omreport storage pdisk controller=0 >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt



echo "===========================================================================" >> all_log_dell.txt
echo "(01-22) omreport storage vdisk" >> all_log_dell.txt
echo "/opt/dell/srvadmin/bin/omreport storage vdisk" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
/opt/dell/srvadmin/bin/omreport storage vdisk >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt


echo "===========================================================================" >> all_log_dell.txt
echo "(01-23) omreport storage connector controller=0" >> all_log_dell.txt
echo "/opt/dell/srvadmin/bin/omreport storage connector controller=0" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
/opt/dell/srvadmin/bin/omreport storage connector controller=0 >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt



echo "===========================================================================" >> all_log_dell.txt
echo "(01-24) omreport storage enclosure" >> all_log_dell.txt
echo "/opt/dell/srvadmin/bin/omreport storage enclosure" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
/opt/dell/srvadmin/bin/omreport storage enclosure >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt



echo "===========================================================================" >> all_log_dell.txt
echo "(01-25) omreport storage battery" >> all_log_dell.txt
echo "/opt/dell/srvadmin/bin/omreport storage battery" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
/opt/dell/srvadmin/bin/omreport storage battery >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt



echo "===========================================================================" >> all_log_dell.txt
echo "(01-26) omreport storage globalinfo" >> all_log_dell.txt
echo "/opt/dell/srvadmin/bin/omreport storage globalinfo" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
/opt/dell/srvadmin/bin/omreport storage globalinfo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt



echo "===========================================================================" >> all_log_dell.txt
echo "(06-01) OS 버전 정보 확인(ubuntu)" >> all_log_dell.txt
echo "sudo cat /etc/os-release" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
sudo cat /etc/os-release >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt



echo "===========================================================================" >> all_log_dell.txt
echo "(06-02) OS 버전 정보 확인(centos)" >> all_log_dell.txt
echo "sudo cat /etc/redhat-release" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
sudo cat /etc/redhat-release >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt



echo "===========================================================================" >> all_log_dell.txt
echo "(06-03) Kernel버전 및 Architecture 정보 확인" >> all_log_dell.txt
echo "sudo uname -a" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
sudo uname -a >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt


echo "===========================================================================" >> all_log_dell.txt
echo "(06-04) CPU 정보 확인" >> all_log_dell.txt
echo "sudo lscpu" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
sudo lscpu >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt



echo "===========================================================================" >> all_log_dell.txt
echo "(06-05) List block devices" >> all_log_dell.txt
echo "sudo lsblk" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
sudo lsblk >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt



echo "===========================================================================" >> all_log_dell.txt
echo "(06-06) Partiton 정보 확인" >> all_log_dell.txt
echo "sudo df -h" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
sudo df -h >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt



echo "===========================================================================" >> all_log_dell.txt
echo "(06-07) fdisk" >> all_log_dell.txt
echo "sudo fdisk -l" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
sudo fdisk -l >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt



echo "===========================================================================" >> all_log_dell.txt
echo "(06-08) ip addr" >> all_log_dell.txt
echo "sudo ip addr" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
sudo ip addr >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt



echo "===========================================================================" >> all_log_dell.txt
echo "(06-08) mdstat" >> all_log_dell.txt
echo "sudo cat /proc/mdstat" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
sudo cat /proc/mdstat >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt



echo "===========================================================================" >> all_log_dell.txt
echo "(08-00) ipmitool lan print" >> all_log_dell.txt
echo "sudo ipmitool lan print" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
sudo ipmitool lan print >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt



echo "===========================================================================" >> all_log_dell.txt
echo "(09-01) lspci" >> all_log_dell.txt
echo "sudo lspci" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
sudo lspci >> all_log_dell.txt
sleep 1
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt



echo "===========================================================================" >> all_log_dell.txt
echo "(09-02) lspci -vvv" >> all_log_dell.txt
echo "sudo lspci -vvv" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
sudo lspci -vvv >> all_log_dell.txt
sleep 1
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt



echo "===========================================================================" >> all_log_dell.txt
echo "(09-03) dmidecode" >> all_log_dell.txt
echo "sudo dmidecode" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
sudo dmidecode >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt



echo "===========================================================================" >> all_log_dell.txt
echo "(09-04) lshw" >> all_log_dell.txt
echo "sudo lshw" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
sudo lshw >> all_log_dell.txt
sleep 5
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt



echo "===========================================================================" >> all_log_dell.txt
echo "(10-01) dmesg" >> all_log_dell.txt
echo "sudo dmesg" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
sudo dmesg >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt



echo "===========================================================================" >> all_log_dell.txt
echo "(10-02) cat anaconda-ks.cfg" >> all_log_dell.txt
echo "sudo cat anaconda-ks.cfg" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
sudo cat anaconda-ks.cfg >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt
echo >> all_log_dell.txt









echo "===========================================================================" >> all_log_dell.txt
echo "EOF" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
echo " `date` " >> all_log_dell.txt
echo "===========================================================================" >> all_log_dell.txt
