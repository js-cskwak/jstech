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
echo "(2) lshw -class system" >> all_log_system.txt
echo "sudo lshw -class system" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class system >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(3) lshw -class bridge" >> all_log_system.txt
echo "sudo lshw -class bridge" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class bridge >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(4) lshw -class memory" >> all_log_system.txt
echo "sudo lshw -class memory" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class memory >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(5) lshw -class processor" >> all_log_system.txt
echo "sudo lshw -class processor" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class processor >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(6) lshw -class address" >> all_log_system.txt
echo "sudo lshw -class address" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class address >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(7) lshw -class storage" >> all_log_system.txt
echo "sudo lshw -class storage" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class storage >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(8) lshw -class disk" >> all_log_system.txt
echo "sudo lshw -class disk" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class disk >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(9) lshw -class tape" >> all_log_system.txt
echo "sudo lshw -class tape" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class tape >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(10) lshw -class bus" >> all_log_system.txt
echo "sudo lshw -class bus" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class bus >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(11) lshw -class network" >> all_log_system.txt
echo "sudo lshw -class network" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class network >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(12) lshw -class display" >> all_log_system.txt
echo "sudo lshw -class display" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class display >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(13) lshw -class input" >> all_log_system.txt
echo "sudo lshw -class input" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class input >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(14) lshw -class printer" >> all_log_system.txt
echo "sudo lshw -class printer" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class printer >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(15) lshw -class multimedia" >> all_log_system.txt
echo "sudo lshw -class multimedia" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class multimedia >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(16) lshw -class communication" >> all_log_system.txt
echo "sudo lshw -class communication" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class communication >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt




echo "===========================================================================" >> all_log_system.txt
echo "(17) lshw -class power" >> all_log_system.txt
echo "sudo lshw -class power" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class power >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(18) lshw -class volume" >> all_log_system.txt
echo "sudo lshw -class volume" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class volume >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt




echo "===========================================================================" >> all_log_system.txt
echo "(19) lshw -class generic" >> all_log_system.txt
echo "sudo lshw -class generic" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lshw -class generic >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(04-01) R/C(CRA4448) 구성정보 확인(간략히)" >> all_log_system.txt
echo "/opt/MegaRAID/storcli/storcli64 /c0 show" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
/opt/MegaRAID/storcli/storcli64 /c0 show >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(04-02) R/C(CRA4448) 구성정보 확인(자세히)" >> all_log_system.txt
echo "/opt/MegaRAID/storcli/storcli64 /c0 /eall /sall show" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
/opt/MegaRAID/storcli/storcli64 /c0 /eall /sall show >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(04-03) R/C(CRA4448) 구성정보 확인(자세히)" >> all_log_system.txt
echo "/opt/MegaRAID/storcli/storcli64 /c0 /eall /sall show all" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
/opt/MegaRAID/storcli/storcli64 /c0 /eall /sall show all >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt


echo "===========================================================================" >> all_log_system.txt
echo "(04-01) R/C(CR33388) 구성정보 확인(간략히)" >> all_log_system.txt
echo “/usr/local/bin/sas3ircu DISPLAY” >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
/usr/local/bin/sas3ircu 0 DISPLAY >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt


echo "===========================================================================" >> all_log_system.txt
echo "(04-01) R/C(CR33388) 구성정보 확인(간략히)" >> all_log_system.txt
echo “/usr/local/bin/sas3ircu STATUS” >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
/usr/local/bin/sas3ircu 0 STATUS >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(04-02) Disk 정보 확인" >> all_log_system.txt
echo “smartctl -a /dev/sda” >> all_log_system.txt
echo “smartctl -a /dev/sdb” >> all_log_system.txt
echo “smartctl -a /dev/nvme0n1” >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
smartctl -a /dev/nvme0n1 >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
smartctl -a /dev/sda >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
smartctl -a /dev/sdb >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(04-04) LPe16002(FC HBA) 정보 확인(model,serial,fw ver)" >> all_log_system.txt
echo "yum install sysfsutils(사전 설치 필요)" >> all_log_system.txt
echo "systool -a -v -c scsi_host host1 | egrep Class Device|model|version|proc_name|serialnum" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo systool -a -v -c scsi_host host1 | egrep "Class Device|model|version|proc_name|serialnum" >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(04-05) LPe16002(FC HBA) WWPN(World wide Port Name) 정보 확인(port1)" >> all_log_system.txt
echo "yum install sysfsutils(사전 설치 필요)" >> all_log_system.txt
echo "cat /sys/class/fc_host/host1/port_name" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
cat /sys/class/fc_host/host1/port_name >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(04-06) LPe16002(FC HBA) WWPN(World wide Port Name) 정보 확인(port2)" >> all_log_system.txt
echo "yum install sysfsutils(사전 설치 필요)" >> all_log_system.txt
echo "cat /sys/class/fc_host/host2/port_name" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
cat /sys/class/fc_host/host2/port_name >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt


echo "===========================================================================" >> all_log_system.txt
echo "(04-07) 전체 PCI Slot 수와 Slot Type 확인" >> all_log_system.txt
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
echo "(04-08) 사용 가능한 PCI Slot 확인" >> all_log_system.txt
echo "dmidecode -t slot | grep -i "available" | wc -l" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo dmidecode -t slot | grep -i "available" | wc -l >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt


echo "===========================================================================" >> all_log_system.txt
echo "(04-09) 현재 사용중인 PCI Slot과 해당 BUS 정보 확인" >> all_log_system.txt
echo "dmidecode -t slot | grep -i "in use" -B2 -A5" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo dmidecode -t slot | grep -i "in use" -B2 -A5 >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(06-01) OS 버전 정보 확인(ubuntu)" >> all_log_system.txt
echo "sudo cat /etc/os-release" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo cat /etc/os-release >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(06-02) OS 버전 정보 확인(centos)" >> all_log_system.txt
echo "sudo cat /etc/redhat-release" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo cat /etc/redhat-release >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(06-03) Kernel버전 및 Architecture 정보 확인" >> all_log_system.txt
echo "sudo uname -a" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo uname -a >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt


echo "===========================================================================" >> all_log_system.txt
echo "(06-04) CPU 정보 확인" >> all_log_system.txt
echo "sudo lscpu" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lscpu >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(06-05) List block devices" >> all_log_system.txt
echo "sudo lsblk" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lsblk >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(06-06) Partiton 정보 확인" >> all_log_system.txt
echo "sudo df -h" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo df -h >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(06-07) fdisk" >> all_log_system.txt
echo "sudo fdisk -l" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo fdisk -l >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(06-08) ip addr" >> all_log_system.txt
echo "sudo ip addr" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo ip addr >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(06-09) mdstat" >> all_log_system.txt
echo "sudo cat /proc/mdstat" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo cat /proc/mdstat >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(08-00) ipmitool lan print" >> all_log_system.txt
echo "sudo ipmitool lan print" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo ipmitool lan print >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(08-01) ipmitool -I open chassis status" >> all_log_system.txt
echo "sudo ipmitool -I open chassis status" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo ipmitool -I open chassis status >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(08-02) Management Controller 정보 확인 (IPMI firmware 정보, 제조사 등)" >> all_log_system.txt
echo "sudo ipmitool -I open mc info" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo ipmitool -I open mc info >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(08-03) iManagement Controller Channel 정보 확인" >> all_log_system.txt
echo "sudo ipmitool -I open channel info 1" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo ipmitool -I open channel info 1 >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(08-04) ipmitool" >> all_log_system.txt
echo "sudo ipmitool sdr" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo ipmitool sdr >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
sleep 2



echo "===========================================================================" >> all_log_system.txt
echo "(08-05) ipmitool sensor 정보를 더 자세히 확인(HDD fault 등)" >> all_log_system.txt
echo "sudo ipmitool sdr elist" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo ipmitool sdr elist >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
sleep 2



echo "===========================================================================" >> all_log_system.txt
echo "(08-06) ipmitool sensor 정보를 더 자세히 확인(HDD fault 등)" >> all_log_system.txt
echo "sudo ipmitool sdr -v" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo ipmitool sdr -v >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
sleep 2



echo "===========================================================================" >> all_log_system.txt
echo "(08-07) ipmitool sensor" >> all_log_system.txt
echo "sudo ipmitool sensor" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo ipmitool sensor >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(08-08) ipmitool -I open fru" >> all_log_system.txt
echo "sudo ipmitool -I open fru" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo ipmitool -I open fru >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt




echo "===========================================================================" >> all_log_system.txt
echo "(08-09) ipmitool -I open sel list" >> all_log_system.txt
echo "sudo ipmitool -I open sel list" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo ipmitool -I open sel list >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
sleep 5


echo "===========================================================================" >> all_log_system.txt
echo "(08-10) ipmitool -I open lan print" >> all_log_system.txt
echo "sudo ipmitool -I open lan print" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo ipmitool -I open lan print >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(08-11) ipmitool -I open chassis policy list" >> all_log_system.txt
echo "sudo ipmitool -I open chassis policy list" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo ipmitool -I open chassis policy list >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(08-12) SOL(Serial-over-LAN), 콘솔화면을 보기위한 설정 정보를 확인 (인증 허용 여부, Serial BPS 등)" >> all_log_system.txt
echo "sudo ipmitool -I open sol info 1" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo ipmitool -I open sol info 1 >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(08-13) ipmitool -I open chassis bootparam get 5" >> all_log_system.txt
echo "sudo ipmitool -I open chassis bootparam get 5" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo ipmitool -I open chassis bootparam get 5 >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(08-14) ipmitool -I open dcmi discover" >> all_log_system.txt
echo "sudo ipmitool -I open dcmi discover" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo ipmitool -I open dcmi discover >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(09-01) lspci" >> all_log_system.txt
echo "sudo lspci" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lspci >> all_log_system.txt
sleep 1
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt



echo "===========================================================================" >> all_log_system.txt
echo "(09-02) lspci -vvv" >> all_log_system.txt
echo "sudo lspci -vvv" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo lspci -vvv >> all_log_system.txt
sleep 5
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt


echo "===========================================================================" >> all_log_system.txt
echo "(09-03) dmidecode" >> all_log_system.txt
echo "sudo dmidecode" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo dmidecode >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
sleep 5


echo "===========================================================================" >> all_log_system.txt
echo "(10-01) dmesg" >> all_log_system.txt
echo "sudo dmesg" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo dmesg >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
sleep 5



echo "===========================================================================" >> all_log_system.txt
echo "(10-02) cat anaconda-ks.cfg" >> all_log_system.txt
echo "sudo cat anaconda-ks.cfg" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo cat anaconda-ks.cfg >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
sleep 5

echo "===========================================================================" >> all_log_system.txt
echo "(10-03) nvidia-smi " >> all_log_system.txt
echo "nvidia-smi" >> all_log_system.txt
echo "===========================================================================" >> all_log_system.txt
sudo nvidia-smi >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
echo >> all_log_system.txt
sleep 5

echo "===========================================================================" >> all_log_system.txt
echo "(10-04) GPU Card Model, Serial" >> all_log_system.txt
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