#!/bin/bash

# Run in Ubuntu (x86, arm)
# 기가바이트 및 범용 시스템 로그 수집

#########################
# 사전설치 S/W
# - Storcli
# - ipmitool
#########################



sudo rm -rf all_log_system.txt
sleep 2


echo "===========================================================================" >> all_log_system.txt
echo " `date` " >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(1) lshw" >> all_log_system.txt
echo "sudo lshw" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw >> all_log_system.txt
sleep 10
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(1-1) lshw -class system" >> all_log_system.txt
echo "sudo lshw -class system" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class system >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(1-2) lshw -class bridge" >> all_log_system.txt
echo "sudo lshw -class bridge" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class bridge >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(1-3) lshw -class memory" >> all_log_system.txt
echo "sudo lshw -class memory" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class memory >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(1-4) lshw -class processor" >> all_log_system.txt
echo "sudo lshw -class processor" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class processor >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(1-5) lshw -class address" >> all_log_system.txt
echo "sudo lshw -class address" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class address >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(1-6) lshw -class storage" >> all_log_system.txt
echo "sudo lshw -class storage" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class storage >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(1-7) lshw -class disk" >> all_log_system.txt
echo "sudo lshw -class disk" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class disk >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(1-8) lshw -class tape" >> all_log_system.txt
echo "sudo lshw -class tape" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class tape >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(1-9) lshw -class bus" >> all_log_system.txt
echo "sudo lshw -class bus" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class bus >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(1-10) lshw -class network" >> all_log_system.txt
echo "sudo lshw -class network" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class network >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(1-11) lshw -class display" >> all_log_system.txt
echo "sudo lshw -class display" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class display >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(1-12) lshw -class input" >> all_log_system.txt
echo "sudo lshw -class input" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class input >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(1-13) lshw -class printer" >> all_log_system.txt
echo "sudo lshw -class printer" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class printer >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(1-14) lshw -class multimedia" >> all_log_system.txt
echo "sudo lshw -class multimedia" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class multimedia >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(1-15) lshw -class communication" >> all_log_system.txt
echo "sudo lshw -class communication" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class communication >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt




echo "===========================================================================" >> all_log_system.txt
echo "(1-16) lshw -class power" >> all_log_system.txt
echo "sudo lshw -class power" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class power >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(1-17) lshw -class volume" >> all_log_system.txt
echo "sudo lshw -class volume" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class volume >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt




echo "===========================================================================" >> all_log_system.txt
echo "(1-18) lshw -class generic" >> all_log_system.txt
echo "sudo lshw -class generic" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class generic >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(2) R/C(CRA4448) 구성정보 확인(간략히)" >> all_log_system.txt
echo "/opt/MegaRAID/storcli/storcli64 /c0 show" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
/opt/MegaRAID/storcli/storcli64 /c0 show >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(2-1) R/C(CRA4448) 구성정보 확인(자세히)" >> all_log_system.txt
echo "/opt/MegaRAID/storcli/storcli64 /c0 /eall /sall show" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
/opt/MegaRAID/storcli/storcli64 /c0 /eall /sall show >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(2-2) R/C(CRA4448) 구성정보 확인(자세히)" >> all_log_system.txt
echo "/opt/MegaRAID/storcli/storcli64 /c0 /eall /sall show all" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
/opt/MegaRAID/storcli/storcli64 /c0 /eall /sall show all >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt


echo "===========================================================================" >> all_log_system.txt
echo "(3) R/C(CR33388) 구성정보 확인(간략히)" >> all_log_system.txt
echo “/usr/local/bin/sas3ircu DISPLAY” >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
/usr/local/bin/sas3ircu 0 DISPLAY >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt


echo "===========================================================================" >> all_log_system.txt
echo "(3-1) R/C(CR33388) 구성정보 확인(간략히)" >> all_log_system.txt
echo “/usr/local/bin/sas3ircu STATUS” >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
/usr/local/bin/sas3ircu 0 STATUS >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
<<<<<<< HEAD
echo "(04-02) Disk 정보 확인" >> all_log_system.txt
echo “smartctl -a /dev/sda” >> all_log_system.txt
echo “smartctl -a /dev/sdb” >> all_log_system.txt
echo “smartctl -a /dev/nvme0n1” >> all_log_system.txt
=======
echo "(4) Disk 정보 확인" >> all_log_system.txt
>>>>>>> 73ce0eb70419d4146c3091021cf67e946092421e
echo "===========================================================================" >> all_log_system.txt
echo “smartctl -a /dev/sda” >> all_log_system.txt
smartctl -a /dev/sda >> all_log_system.txt
echo >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
echo “smartctl -a /dev/sdb” >> all_log_system.txt
smartctl -a /dev/sdb >> all_log_system.txt
<<<<<<< HEAD
echo >> all_log_system.txt
=======
>>>>>>> 73ce0eb70419d4146c3091021cf67e946092421e
echo "===========================================================================" >> all_log_system.txt
echo “smartctl -a /dev/nvme0n1” >> all_log_system.txt
smartctl -a /dev/nvme0n1 >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt


echo "===========================================================================" >> all_log_system.txt
echo "(5) LPe16002(FC HBA) 정보 확인(model,serial,fw ver)" >> all_log_system.txt
echo "systool -a -v -c scsi_host host1 | egrep Class Device|model|version|proc_name|serialnum" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo systool -a -v -c scsi_host host1 | egrep "Class Device|model|version|proc_name|serialnum" >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(5-1) LPe16002(FC HBA) WWPN(World wide Port Name) 정보 확인(port1)" >> all_log_system.txt
echo "cat /sys/class/fc_host/host1/port_name" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
cat /sys/class/fc_host/host1/port_name >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(5-2) LPe16002(FC HBA) WWPN(World wide Port Name) 정보 확인(port2)" >> all_log_system.txt
echo "cat /sys/class/fc_host/host2/port_name" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
cat /sys/class/fc_host/host2/port_name >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt


echo "===========================================================================" >> all_log_system.txt
echo "(6) 전체 PCI Slot 수와 Slot Type 확인" >> all_log_system.txt
echo "dmidecode -t slot | grep Type | wc -l" >> all_log_system.txt
echo "dmidecode -t slot | grep Type" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo dmidecode -t slot | grep Type | wc -l >> all_log_system.txt
sudo dmidecode -t slot | grep Type >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt


echo "===========================================================================" >> all_log_system.txt
echo "(6-1) 사용 가능한 PCI Slot 확인" >> all_log_system.txt
echo "dmidecode -t slot | grep -i "available" | wc -l" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo dmidecode -t slot | grep -i "available" | wc -l >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt


echo "===========================================================================" >> all_log_system.txt
echo "(6-2) 현재 사용중인 PCI Slot과 해당 BUS 정보 확인" >> all_log_system.txt
echo "dmidecode -t slot | grep -i "in use" -B2 -A5" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo dmidecode -t slot | grep -i "in use" -B2 -A5 >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(7) OS 버전 정보 확인(ubuntu)" >> all_log_system.txt
echo "sudo cat /etc/os-release" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo cat /etc/os-release >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(7-1) OS 버전 정보 확인(centos)" >> all_log_system.txt
echo "sudo cat /etc/redhat-release" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo cat /etc/redhat-release >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(8) Kernel버전 및 Architecture 정보 확인" >> all_log_system.txt
echo "sudo uname -a" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo uname -a >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt


echo "===========================================================================" >> all_log_system.txt
echo "(9) CPU 정보 확인" >> all_log_system.txt
echo "sudo lscpu" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lscpu >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(10) List block devices" >> all_log_system.txt
echo "sudo lsblk" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lsblk >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(10-1) Partiton 정보 확인" >> all_log_system.txt
echo "sudo df -h" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo df -h >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(10-2) fdisk" >> all_log_system.txt
echo "sudo fdisk -l" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo fdisk -l >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt


echo "===========================================================================" >> all_log_system.txt
echo "(10-3) mdstat" >> all_log_system.txt
echo "sudo cat /proc/mdstat" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo cat /proc/mdstat >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt


echo "===========================================================================" >> all_log_system.txt
echo "(11) ip addr" >> all_log_system.txt
echo "sudo ip addr" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo ip addr >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt


echo "===========================================================================" >> all_log_system.txt
echo "(12) ipmitool lan print" >> all_log_system.txt
echo "sudo ipmitool lan print" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo ipmitool lan print >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(12-1) ipmitool -I open chassis status" >> all_log_system.txt
echo "sudo ipmitool -I open chassis status" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo ipmitool -I open chassis status >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(12-2) Management Controller 정보 확인 (IPMI firmware 정보, 제조사 등)" >> all_log_system.txt
echo "sudo ipmitool -I open mc info" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo ipmitool -I open mc info >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(12-3) iManagement Controller Channel 정보 확인" >> all_log_system.txt
echo "sudo ipmitool -I open channel info 1" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo ipmitool -I open channel info 1 >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(12-4) ipmitool" >> all_log_system.txt
echo "sudo ipmitool sdr" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo ipmitool sdr >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
sleep 2



echo "===========================================================================" >> all_log_system.txt
echo "(12-5) ipmitool sensor 정보를 더 자세히 확인(HDD fault 등)" >> all_log_system.txt
echo "sudo ipmitool sdr elist" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo ipmitool sdr elist >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
sleep 2



echo "===========================================================================" >> all_log_system.txt
echo "(12-6) ipmitool sensor 정보를 더 자세히 확인(HDD fault 등)" >> all_log_system.txt
echo "sudo ipmitool sdr -v" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo ipmitool sdr -v >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
sleep 2



echo "===========================================================================" >> all_log_system.txt
echo "(12-7) ipmitool sensor" >> all_log_system.txt
echo "sudo ipmitool sensor" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo ipmitool sensor >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(12-8) ipmitool -I open fru" >> all_log_system.txt
echo "sudo ipmitool -I open fru" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo ipmitool -I open fru >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt




echo "===========================================================================" >> all_log_system.txt
echo "(12-9) ipmitool -I open sel list" >> all_log_system.txt
echo "sudo ipmitool -I open sel list" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo ipmitool -I open sel list >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
sleep 5


echo "===========================================================================" >> all_log_system.txt
echo "(12-10) ipmitool -I open lan print" >> all_log_system.txt
echo "sudo ipmitool -I open lan print" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo ipmitool -I open lan print >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(12-11) ipmitool -I open chassis policy list" >> all_log_system.txt
echo "sudo ipmitool -I open chassis policy list" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo ipmitool -I open chassis policy list >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(12-12) SOL(Serial-over-LAN), 콘솔화면을 보기위한 설정 정보를 확인 (인증 허용 여부, Serial BPS 등)" >> all_log_system.txt
echo "sudo ipmitool -I open sol info 1" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo ipmitool -I open sol info 1 >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(12-13) ipmitool -I open chassis bootparam get 5" >> all_log_system.txt
echo "sudo ipmitool -I open chassis bootparam get 5" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo ipmitool -I open chassis bootparam get 5 >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(12-14) ipmitool -I open dcmi discover" >> all_log_system.txt
echo "sudo ipmitool -I open dcmi discover" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo ipmitool -I open dcmi discover >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(13) lspci" >> all_log_system.txt
echo "sudo lspci" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lspci >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(13-1) lspci -vvv" >> all_log_system.txt
echo "sudo lspci -vvv" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lspci -vvv >> all_log_system.txt
sleep 5
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt


echo "===========================================================================" >> all_log_system.txt
echo "(14) dmidecode" >> all_log_system.txt
echo "sudo dmidecode" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo dmidecode >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
sleep 5


echo "===========================================================================" >> all_log_system.txt
echo "(15) dmesg" >> all_log_system.txt
echo "sudo dmesg" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo dmesg >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
sleep 5



echo "===========================================================================" >> all_log_system.txt
echo "(16) cat anaconda-ks.cfg" >> all_log_system.txt
echo "sudo cat anaconda-ks.cfg" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo cat anaconda-ks.cfg >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
sleep 5

echo "===========================================================================" >> all_log_system.txt
echo "(17) nvidia-smi " >> all_log_system.txt
echo "nvidia-smi" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo nvidia-smi >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
sleep 5

echo "===========================================================================" >> all_log_system.txt
echo "(17-1) GPU Card Model, Serial" >> all_log_system.txt
echo "nvidia-smi --query-gpu=name,serial --format=csv" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo nvidia-smi --query-gpu=name,serial --format=csv >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
sleep 5


echo "===========================================================================" >> all_log_system.txt
echo "EOF" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
echo " `date` " >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
<<<<<<< HEAD
=======

echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt

DMIDECODE(){

local dmidecode_input
dmidecode_input=$(dmidecode 2>/dev/null)

echo -e "==========================${c[H1]}SYSTEM SUMMARY${c[0]}================================="
echo -e "${c[H1]}DMIDECODE${c[0]}"
echo -e "${c[H2]}  BIOS:${c[0]}"
gawk 'BEGIN { RS="\nHandle" } /BIOS Information/' <<<"$dmidecode_input" |
    gawk -F: -vH3="${c[H3]}" -vH2="${c[H2]}" -vH0="${c[0]}" -vH_IMP="${c[Imp]}" '
      /Vendor:/            { Vendor  = $2; gsub(/  */, " ", Vendor) }
      /Version:/           { Version = $2; gsub(/  */, " ", Version) }
      /Release Date:/      { RelDate = $2; gsub(/  */, " ", RelDate) }
      /BIOS Revision:/     { BiosRev = $2; gsub(/  */, " ", BiosRev) }
      /Firmware Revision:/ { FirmRev = $2; gsub(/  */, " ", FirmRev) }
      END {
        printf "    %sVend:%s%s\n", H3, H0, Vendor
        printf "    %sVers:%s%s\n", H3, H0, Version
        printf "    %sDate:%s%s\n", H3, H0, RelDate
        printf "    %sBIOS Rev:%s%s\n", H3, H0, BiosRev
      # printf "    %sFW Rev:%s  %s\n", H3, H0, FirmRev
      }
    '

echo -e "${c[H2]}  System:${c[0]}"
  gawk 'BEGIN { RS="\nHandle" } /System Information/' <<<"$dmidecode_input" |
      gawk -F: -vH3="${c[H3]}" -vH2="${c[H2]}" -vH0="${c[0]}" -vH_IMP="${c[Imp]}" '
      /Manufacturer:/ { Mfr     = $2; gsub(/  */, " ", Mfr) }
      /Product Name:/ { Product = $2; gsub(/  */, " ", Product) }
      /Version:/      { Version = $2; gsub(/  */, " ", Version) }
      /Serial Number:/{ Serial  = $2 }
      /UUID:/         { UUID    = $2 }
      END {
        printf "    %sMfr:%s %s\n", H3, H0, Mfr
        printf "    %sProd:%s%s\n", H3, H0, Product
        printf "    %sVers:%s%s\n", H3, H0, Version
        printf "    %sSer:%s %s\n", H3, H0, Serial
      # printf "    %sUUID:%s%s\n", H3, H0, UUID
      }
    '
echo -e "${c[H2]}  CPU:${c[0]}"
  gawk 'BEGIN { RS="\nHandle" } /Processor Information/' <<<"$dmidecode_input" |
    gawk -F: -vH3="${c[H3]}" -vH2="${c[H2]}" -vH0="${c[0]}" -vH_IMP="${c[Imp]}" '
      /Status:/       { SumSockets ++; if ($2 ~ /Populated/) PopulatedSockets ++ }
      /Core Count:/   { SumCores   += $2; CoresPerCpu = $2 }
      /Thread Count:/ { SumThreads += $2; ThreadsPerCpu = $2 }
      /Manufacturer:/ { if ($2 ~ /^ *$/)         next; Mfr      = $2; gsub(/  */, " ", Mfr) }
      /Family:/       { if ($2 ~ /^ *$|Other/)   next; Family   = $2; gsub(/  */, " ", Family) }
      /Current Speed:/{ if ($2 ~ /^ *$|Unknown/) next; CpuFreq  = $2; gsub(/  */, " ", CpuFreq) }
      /Version:/      { if ($2 ~ /^ *$/)         next; Version  = $2; gsub(/  */, " ", Version) }
      END {
        printf "    %s%d of %d CPU sockets populated, %d cores/%d threads per CPU\n",
          H_IMP, PopulatedSockets, SumSockets, CoresPerCpu, ThreadsPerCpu
        printf "    %d total cores, %d total threads\n", SumCores, SumThreads, H0
        printf "    %sMfr:%s %s\n", H3, H0, Mfr
        printf "    %sFam:%s %s\n", H3, H0, Family
        printf "    %sFreq:%s%s\n", H3, H0, CpuFreq
        printf "    %sVers:%s%s\n", H3, H0, Version
      }
    '

echo -e "${c[H2]}  Memory:${c[0]}"
  MemSize=`dmidecode -t memory | grep Size | head -1`
  MemSize=`gawk '{print $2}' <<<"$MemSize"`
  echo -e "    Memory Size: $MemSize GB"
  gawk 'BEGIN { RS="\nHandle" } /Physical Memory Array|Memory Device/' <<<"$dmidecode_input" |
    gawk -vH3="${c[H3]}" -vH2="${c[H2]}" -vH0="${c[0]}" -vH_IMP="${c[Imp]}" '
      /Size:/ {
        NumDimmSlots ++
        if ($2 ~ /^[0-9]/) {
          NumDimms ++
          if ($3 ~ /^P/)
            SumRam += $2 * 1024 * 1024 * 1024
          else if ($3 ~ /^T/)
            SumRam += $2 * 1024 * 1024
          else if ($3 ~ /^G/)
            SumRam += $2 * 1024
          else if ($3 ~/^[kK]/)
            SumRam += $2 / 1024
          else if ($3 ~/^[bB]/)
            SumRam += $2 / 1024 / 1024
          else
            SumRam += $2
        }
      }
      END {
        printf "    %sDIMMs:%s %d populated\n", H3, H0, NumDimms
        printf "    %sTotal:%s %d MiB (%.0f GiB)\n", H3, H0, SumRam, SumRam/1024
      }
    '
echo -e "\n"
}

OSINFO(){
    OS_INDENT="            "
    if [[ ! -r $1/etc/redhat-release ]]; then
       distro_release="${c[Imp]}[redhat-release]${c[0]} ${c[RED]}(missing)${c[0]}"
    fi
    if source "$1/etc/os-release" 2>/dev/null; then
       distro_release="$distro_release\n$OS_INDENT${c[Imp]}[os-release]${c[0]} $PRETTY_NAME $VERSION"
    fi

    hostname=$(cat "$1/proc/sys/kernel/hostname" 2>/dev/null)
    kernel=$(cat "$1/proc/sys/kernel/osrelease" 2>/dev/null)
    btime=$(gawk '/^btime/{print $2}' "$1/proc/stat" 2>/dev/null)
    uname=$(uname -a | gawk '{printf "mach=%s  cpu=%s  platform=%s\n", $(NF-3), $(NF-2), $(NF-1)}')
    systime=$(date)
    [[ $(wc -w <<<"$systime") == 6 ]] &&
      systime=$(gawk -vH0="${c[0]}" -vH_IMP="${c[Imp]}" '{if ($3 < 10) space=" "; printf "%s %s %s%s %s %s%s%s %s\n", $1,$2,space,$3,$4,H_IMP,$5,H0,$6}' <<<"$systime")
    boottime=$(date --date=@$btime 2>/dev/null)
    [[ $(wc -w <<<"$boottime") == 6 ]] &&
      boottime=$(gawk -vH0="${c[0]}" -vH_IMP="${c[Imp]}" -vbtime=$btime '{if ($3 < 10) space=" "; printf "%s %s %s%s %s %s%s%s %s  (epoch: %s)\n", $1,$2,space,$3,$4,H_IMP,$5,H0,$6,btime}' <<<"$boottime")
    [[ -r /etc/sysconfig/clock ]] &&
      timezone=$(gawk -F= '/^ZONE=/{print $2}' "/etc/sysconfig/clock" 2>/dev/null | tr -d \")
    [[ -x $(which timedatectl 2>/dev/null) ]] &&
      timezone=$(timedatectl | gawk '/Time zone/ {print $3}' 2>/dev/null)
    uptime_input=$(uptime)
    proc_cmdline=$(sed -r 's,^BOOT_IMAGE=/[[:graph:]]+ ,,' "$1"/proc/cmdline)

echo -e "${c[H1]}OS${c[0]}"
echo -e "  ${c[H2]}Hostname:${c[0]} $hostname"
echo -e "  ${c[H2]}Distro:${c[0]}   $distro_release"
echo -e "  ${c[H2]}Arch:${c[0]}     $uname"
echo -e "  ${c[H2]}Kernel:${c[0]}"
echo -e "    ${c[H3]}Booted kernel:${c[0]}  $kernel"
echo -e "    ${c[H3]}Booted kernel cmdline:${c[0]}"
echo -e "         $proc_cmdline" 
echo -e "  ${c[H2]}Sys time:${c[0]}  $systime"
echo -e "  ${c[H2]}Boot time:${c[0]}  $boottime"
echo -e "  ${c[H2]}Time Zone:${c[0]}  $timezone"
echo -e "  ${c[H2]}Uptime:${c[0]}  $uptime_input"
echo -e "\n"
}

STORAGE(){
  echo -e "${c[H1]}STORAGE${c[0]}"
  lsblk_input=$(lsblk 2>/dev/null)
  df_input=$(df -al -x autofs 2>/dev/null)
  partitions_input=$1/proc/partitions

  [[ -n $scsi_blacklist ]] && bl=y || { bl=n; scsi_blacklist=NULL; }
  [[ -f $1 ]] && partitions_input=$1 || partitions_input=$1/proc/partitions
  echo -e "  ${c[H2]}Whole Disks from /proc/partitions:${c[0]}"
  egrep -v "${scsi_blacklist%?}" "$partitions_input" |
    gawk -vblacklisted=$bl -vblacklist_devcount=$(wc -w <<<"${scsi_blacklist//|/ }") -vcolor_grey="${c[lgrey]}" -vH_IMP="${c[Imp]}" -vH3="${c[H3]}" -vH2="${c[H2]}" -vH0="${c[0]}" '
      # For starters, we search /proc/partitions for certain types of devices
      # These block types are from devices.txt in the linux kernel documentation
      # Updated 2015/08/18 from kernel-doc-3.10.0-229.7.2.el7
      BEGIN {
        blkdevs = "^("  \
                  "(vd|hd|sd|mfm|ad|ftl|pd|i2o/hd|nftl|dasd|inftl|ubd|cbd/|iseries/vd|ub|xvd|rfd|ssfdc)[[:alpha:]]+"  \
                  "|"  \
                  "(ramdisk|ram|loop|md|rr?om|r?flash|nb|ppdd|amiraid/ar|ataraid/d|nwfs/v|umem/d|drbd|etherd/|emd/|carmel/|mmcblk|blockrom)[0-9]+"  \
                  "|"  \
                  "(rd|ida|cciss)/c[0-9]+d[0-9]+"  \
                  "|"  \
                  "vx/dsk/.*/.*|vx/dmp/.*"  \
                  ")$"
      }
      $4 ~ blkdevs {
        
        # For each thing found, increment the total number of disks
        numdisks ++
        
        # Name a key in the array after the disk and then store its size in GiB there
        disk[$4] = $3/1024/1024
        
        # Also, add to the total sum of disk-storage
        sum_gb  += disk[$4]
      }
      
      END {
        # All done with the data-gathering; so print out a summary
        printf   "    %s%d disks, totaling %.0f GiB (%.2f TiB)%s\n", H_IMP, numdisks, sum_gb, sum_gb/1024, H0
        
        # Print a notice if devices were hidden due to blacklist
        if (blacklisted == "y")
          printf "    %s(%d multipath/mdraid components hidden)%s\n", H_IMP, blacklist_devcount, H0
        
        # Some pretty header-fun
        printf   "    %s- - - - - - - - - - - - - - - - - - - - -%s\n", color_grey, H0
        printf   "    %sDisk \tSize in GiB\n", H3
        printf   "    ----\t-----------%s\n", H0
        
        # Finally, print all the disks & their sizes
        n = asorti(disk, disk_sorted)
        for (i = 1; i <= n; i++)
          printf "    %s \t%.0f\n", disk_sorted[i], disk[disk_sorted[i]]
      }
    '

    XSOS_INDENT_H2="    "
    if [[ -n $lsblk_input ]]; then
      echo -e "\n  ${c[H2]}Disk layout from lsblk:${c[0]}"
      echo -en "$lsblk_input" | gawk -vH_IMP="${c[Imp]}" -vH0="${c[0]}" '
                                  # for lines after the first, print normal output 
                                  (NR > 1) {print}
                                  # print bold header on the first line
                                  (NR == 1) {printf "%s%s%s\n", H_IMP, $0, H0}
                                ' | sed "s,^,$XSOS_INDENT_H2,"
    fi
    if [[ -n $df_input ]]; then
      echo -e "\n  ${c[H2]}Filesystem usage from df:${c[0]}"
      echo -en "$df_input" | gawk -vH_IMP="${c[Imp]}" -vH0="${c[0]}" '
                               # for lines after the first, print normal output 
                               # match filesystems with a "/" in the name to avoid noise like tmpfs, cgroup, proc, sysfs, etc
                               (NR > 1) && ($1 ~ /\//) {print}
                               # print bold header on the first line
                               (NR == 1) {printf "%s%s%s\n", H_IMP, $0, H0}
                             ' | sed "s,^,$XSOS_INDENT_H2,"
    fi

echo -e "\n"
}

LSPCI() {
  
  lspci_input=$(lspci)

  echo -e "${c[H1]}LSPCI${c[0]}"
  
  cnt=`gawk '/Ethernet/' <<<"$lspci_input" | wc -l`
  echo -e "${c[H2]}  Ethernet:${c[0]} $cnt ea"
  gawk '/Ethernet/{print "    " $0}' <<<"$lspci_input"

  echo -e "${c[H2]}  RAID Card:${c[0]}"
  gawk '/RAID/{print "    " $0}' <<<"$lspci_input"

  cnt=`gawk '/Fibre/' <<<"$lspci_input" | wc -l`
  echo -e "${c[H2]}  Fibre Channel:${c[0]} $cnt ea"
  gawk '/Fibre/{print "    " $0}' <<<"$lspci_input"

echo -e "\n"
}

IPADDR() {

  # Local vars:
  local ip_a_input brctl_show_input bridge_link_show bridge_list ipdevs bridge interface i i_substr n ipaddr scope alias
  
  # Declare our 7 associative arrays:
  local -A lookup_bridge iface_input slaveof state ipv4 ipv4_alias mtu mac
  
  # If localhost, use ip addr
  ip_a_input=$(ip a)
  
  # Prepare ip addr input for gawk by separating each interface block
  ip_a_input=$(sed -e 's,^[0-9]*: ,\n&,' -e '1s,^,\n,' <<<"${ip_a_input}")
  
  # Grab a list of the interface names
  ipdevs=$(gawk -F: 'BEGIN {RS="\n\n"} {print $2}' <<<"${ip_a_input}" | egrep -v 'sit0')
  
  # Begin ...
  echo -e "${c[H1]}IP${c[0]}"
  
  # The bracket here is like using parens to make a subshell -- allows to capture all stdout
  {
    # Header info ("❚" is used later by `column` to columnize the output)
    echo "  Interface❚MAC Address❚MTU❚State❚IPv4 Address"
    echo "  =========❚=================❚======❚=====❚=================="
    
    # For each interface ($i) found in ip addr output
    for i in ${ipdevs}; do
      
      # Pull out input for specific interface and save to interface key in array
      iface_input[$i]=$(gawk "BEGIN {RS=\"\n\n\"} /^[0-9]+: ${i}:/" <<<"${ip_a_input}")

      # Store a substr of $i with any @<master> removed
      i_substr=$(expr match "$i" '\([^@]*\)')

      # Get MTU for $i
      mtu[$i]=$(egrep -o ' mtu [0-9]+' <<<"${iface_input[$i]}" | gawk '{print $2}')
      
      # Get up/down state for $i
      state[$i]=$(grep -q "${i}: <.*,UP.*>"  <<<"${iface_input[$i]}" && echo up || echo DOWN)
      
      # Get macaddr for $i (don't show if all zeros)
      mac[$i]=$(egrep -q 'link/[[:graph:]]+ ..:..:..:..:..:..' <<<"${iface_input[$i]}" &&
                gawk -v scrub="${XSOS_SCRUB_MACADDR}" '
                    /link\/[[:graph:]]+ ..:..:..:..:..:../ {
                        if ($2 == "00:00:00:00:00:00") print "-"
                        else if (scrub == "y") print "⣿⣿:⣿⣿:⣿⣿:⣿⣿:⣿⣿:⣿⣿"
                        else print $2
                    }
                ' <<<"${iface_input[$i]}" || echo "-")
      
        # If $i has an ipv4 address, time to figure out what it is
        if grep -q "inet .* ${i%@*}\$" <<<"${iface_input[$i]}"; then
          
          # We could have more than one non-alias ip4addr...
          # So we need to set up a counter and do a loop
          n=0; while read ipaddr; do
            if [[ ${n} -eq 0 ]]; then
              echo "  ${i}❚${slaveof[$i]}❚${mac[$i]}❚${mtu[$i]}❚${state[$i]}❚${ipaddr}"
            else
              echo "   ❚ ❚ ❚ ❚ ❚${ipaddr}"
            fi
            ((n++))
          done < <(gawk -v scrub="${XSOS_SCRUB_IP_HN}" "
                        /inet .* ${i%@*}\$/ {
                            if (scrub == \"y\") print \"⣿⣿⣿.⣿⣿⣿.⣿⣿⣿.⣿⣿⣿/⣿⣿\"
                            else print \$2
                        }
                   " <<<"${iface_input[$i]}")
        
        # Otherwise, print out all info with ipaddr set to "-"
        else
          echo "  ${i}❚${slaveof[$i]}❚${mac[$i]}❚${mtu[$i]}❚${state[$i]}❚-"
          # ... And Continue on to the next interface, i.e., skip looking for aliases
          continue
        fi
    done
  } |
  
    # All output from above needs to be columnized
    column -ts❚ |
    
      # And then we need to do some color funness!
      # This colorizes the first 2 lines with the H2 color and the interfaces with H3
      # Plus DOWN interfaces with Down color and up interfaces with Up color
      gawk -vH0="${c[0]}" -vH2="${c[H2]}" -vH3="${c[H3]}" -vU="${c[Up]}" -vD="${c[Down]}" '
        {
          if (NR <= 2) printf H2 $0
          else {
            if ($5 == "DOWN") printf D $0
            else if ($0 ~ /^  [[:graph:]]/) printf gensub(/(^  [[:graph:]]+ )/,  H3"\\1"U, 1)
            else printf U $0
          }
          print H0
        }'
  echo -e "\n"
}


DMIDECODE
OSINFO
STORAGE
LSPCI
IPADDR


>>>>>>> 73ce0eb70419d4146c3091021cf67e946092421e
