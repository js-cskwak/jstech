#!/bin/bash

# For HP system log collection

#########################
# 사전설치 S/W
# - ilores
# - SSACLI
# - ipmitool
#########################


sudo rm -rf all_log_hp.txt
sleep 2


echo "===========================================================================" >> all_log_hp.txt
echo " `date` " >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt



echo "===========================================================================" >> all_log_hp.txt
echo "(01-01) ilorest" >> all_log_hp.txt
echo "/usr/sbin/ilorest serverlogs --selectlog=IML" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
/usr/sbin/ilorest serverlogs --selectlog=IML >> all_log_hp.txt
sleep 1
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt



echo "===========================================================================" >> all_log_hp.txt
echo "(02-01) Temperature" >> all_log_hp.txt
echo "/usr/sbin/ilorest serverinfo --thermals" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
/usr/sbin/ilorest serverinfo --thermals >> all_log_hp.txt
sleep 1
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt



echo "===========================================================================" >> all_log_hp.txt
echo "(02-02) FAN info" >> all_log_hp.txt
echo "/usr/sbin/ilorest serverinfo --fans" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
/usr/sbin/ilorest serverinfo --fans >> all_log_hp.txt
sleep 1
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt


echo "===========================================================================" >> all_log_hp.txt
echo "(02-03) powersupply info" >> all_log_hp.txt
echo "/usr/sbin/ilorest serverinfo --power" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
/usr/sbin/ilorest serverinfo --power >> all_log_hp.txt
sleep 1
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt



echo "===========================================================================" >> all_log_hp.txt
echo "(03-01) show asr" >> all_log_hp.txt
echo "/usr/sbin/ilorest get --selector=Bios | grep AsrTimeoutMinutes" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
/usr/sbin/ilorest get --selector=Bios | grep AsrTimeoutMinutes >> all_log_hp.txt
sleep 1
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt


echo "===========================================================================" >> all_log_hp.txt
echo "(03-02) show boot" >> all_log_hp.txt
echo "/usr/sbin/ilorest bootorder" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
/usr/sbin/ilorest bootorder >> all_log_hp.txt
sleep 1
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt



echo "===========================================================================" >> all_log_hp.txt
echo "(03-03) show ht" >> all_log_hp.txt
echo "/usr/sbin/ilorest get --selector=Bios | grep ProcHyperthreading" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
/usr/sbin/ilorest get --selector=Bios | grep ProcHyperthreading >> all_log_hp.txt
sleep 1
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt



echo "===========================================================================" >> all_log_hp.txt
echo "(03-04) show iml" >> all_log_hp.txt
echo "/usr/sbin/ilorest serverlogs --selectlog=IML" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
/usr/sbin/ilorest serverlogs --selectlog=IML >> all_log_hp.txt
sleep 1
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt




echo "===========================================================================" >> all_log_hp.txt
echo "(03-05) show powermeter" >> all_log_hp.txt
echo "/usr/sbin/ilorest serverinfo --power | grep "Total Power Consumed"" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
/usr/sbin/ilorest serverinfo --power | grep "Total Power Consumed" >> all_log_hp.txt
sleep 1
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt



echo "===========================================================================" >> all_log_hp.txt
echo "(03-06) show serial bios" >> all_log_hp.txt
echo "(03-07) show serial embedded" >> all_log_hp.txt
echo "/usr/sbin/ ilorest get --selector=Bios | grep Serial" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
/usr/sbin/hpasmcli -s "show serial bios" >> all_log_hp.txt
sleep 1
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt




echo "===========================================================================" >> all_log_hp.txt
echo "(04-01) R/C 구성정보 확인(간략히)" >> all_log_hp.txt
echo "/usr/sbin/ssacli ctrl all show config" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
/usr/sbin/ssacli ctrl all show config >> all_log_hp.txt
sleep 1
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt



echo "===========================================================================" >> all_log_hp.txt
echo "(04-02) R/C 구성정보 확인(자세히)" >> all_log_hp.txt
echo "/usr/sbin/ssacli ctrl all show config detail" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
/usr/sbin/ssacli ctrl all show config detail >> all_log_hp.txt
sleep 1
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt


echo "===========================================================================" >> all_log_hp.txt
echo "(04-03) R/C 상태 확인" >> all_log_hp.txt
echo "/usr/sbin/ssacli ctrl all show status" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
/usr/sbin/ssacli ctrl all show status >> all_log_hp.txt
sleep 1
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt



echo "===========================================================================" >> all_log_hp.txt
echo "(06-01) OS 버전 정보 확인(ubuntu)" >> all_log_hp.txt
echo "sudo cat /etc/os-release" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
sudo cat /etc/os-release >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt



echo "===========================================================================" >> all_log_hp.txt
echo "(06-02) OS 버전 정보 확인(centos)" >> all_log_hp.txt
echo "sudo cat /etc/redhat-release" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
sudo cat /etc/redhat-release >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt



echo "===========================================================================" >> all_log_hp.txt
echo "(06-03) Kernel버전 및 Architecture 정보 확인" >> all_log_hp.txt
echo "sudo uname -a" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
sudo uname -a >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt



echo "===========================================================================" >> all_log_hp.txt
echo "(06-04) CPU 정보 확인" >> all_log_hp.txt
echo "sudo lscpu" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
sudo lscpu >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt



echo "===========================================================================" >> all_log_hp.txt
echo "(06-05) List block devices" >> all_log_hp.txt
echo "sudo lsblk" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
sudo lsblk >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt



echo "===========================================================================" >> all_log_hp.txt
echo "(06-06) Partiton 정보 확인" >> all_log_hp.txt
echo "sudo df -h" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
sudo df -h >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt



echo "===========================================================================" >> all_log_hp.txt
echo "(06-07) fdisk" >> all_log_hp.txt
echo "sudo fdisk -l" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
sudo fdisk -l >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt



echo "===========================================================================" >> all_log_hp.txt
echo "(06-08) ip addr" >> all_log_hp.txt
echo "sudo ip addr" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
sudo ip addr >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt



echo "===========================================================================" >> all_log_hp.txt
echo "(06-09) mdstat" >> all_log_hp.txt
echo "sudo cat /proc/mdstat" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
sudo cat /proc/mdstat >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt



echo "===========================================================================" >> all_log_hp.txt
echo "(08-00) ipmitool lan print" >> all_log_hp.txt
echo "sudo ipmitool lan print" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
sudo ipmitool lan print >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt



echo "===========================================================================" >> all_log_hp.txt
echo "(08-01) ipmitool -I open chassis status" >> all_log_hp.txt
echo "sudo ipmitool -I open chassis status" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
sudo ipmitool -I open chassis status >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt



echo "===========================================================================" >> all_log_hp.txt
echo "(08-02) Management Controller 정보 확인 (IPMI firmware 정보, 제조사 등)" >> all_log_hp.txt
echo "sudo ipmitool -I open mc info" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
sudo ipmitool -I open mc info >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt



echo "===========================================================================" >> all_log_hp.txt
echo "(08-03) iManagement Controller Channel 정보 확인" >> all_log_hp.txt
echo "sudo ipmitool -I open channel info 1" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
sudo ipmitool -I open channel info 1 >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt



echo "===========================================================================" >> all_log_hp.txt
echo "(08-04) ipmitool" >> all_log_hp.txt
echo "sudo ipmitool sdr" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
sudo ipmitool sdr >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt
sleep 2



echo "===========================================================================" >> all_log_hp.txt
echo "(08-05) ipmitool sensor 정보를 더 자세히 확인(HDD fault 등)" >> all_log_hp.txt
echo "sudo ipmitool sdr elist" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
sudo ipmitool sdr elist >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt
sleep 2



echo "===========================================================================" >> all_log_hp.txt
echo "(08-06) ipmitool sensor 정보를 더 자세히 확인(HDD fault 등)" >> all_log_hp.txt
echo "sudo ipmitool sdr -v" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
sudo ipmitool sdr -v >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt
sleep 2



echo "===========================================================================" >> all_log_hp.txt
echo "(08-07) ipmitool sensor" >> all_log_hp.txt
echo "sudo ipmitool sensor" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
sudo ipmitool sensor >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt



echo "===========================================================================" >> all_log_hp.txt
echo "(08-08) ipmitool -I open fru" >> all_log_hp.txt
echo "sudo ipmitool -I open fru" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
sudo ipmitool -I open fru >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt




echo "===========================================================================" >> all_log_hp.txt
echo "(08-09) ipmitool -I open sel list" >> all_log_hp.txt
echo "sudo ipmitool -I open sel list" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
sudo ipmitool -I open sel list >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt
sleep 5


echo "===========================================================================" >> all_log_hp.txt
echo "(08-10) ipmitool -I open lan print" >> all_log_hp.txt
echo "sudo ipmitool -I open lan print" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
sudo ipmitool -I open lan print >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt



echo "===========================================================================" >> all_log_hp.txt
echo "(08-11) ipmitool -I open chassis policy list" >> all_log_hp.txt
echo "sudo ipmitool -I open chassis policy list" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
sudo ipmitool -I open chassis policy list >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt



echo "===========================================================================" >> all_log_hp.txt
echo "(08-12) SOL(Serial-over-LAN), 콘솔화면을 보기위한 설정 정보를 확인 (인증 허용 여부, Serial BPS 등)" >> all_log_hp.txt
echo "sudo ipmitool -I open sol info 1" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
sudo ipmitool -I open sol info 1 >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt



echo "===========================================================================" >> all_log_hp.txt
echo "(08-13) ipmitool -I open chassis bootparam get 5" >> all_log_hp.txt
echo "sudo ipmitool -I open chassis bootparam get 5" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
sudo ipmitool -I open chassis bootparam get 5 >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt



echo "===========================================================================" >> all_log_hp.txt
echo "(08-14) ipmitool -I open dcmi discover" >> all_log_hp.txt
echo "sudo ipmitool -I open dcmi discover" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
sudo ipmitool -I open dcmi discover >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt



echo "===========================================================================" >> all_log_hp.txt
echo "(09-01) lspci" >> all_log_hp.txt
echo "sudo lspci" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
sudo lspci >> all_log_hp.txt
sleep 1
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt



echo "===========================================================================" >> all_log_hp.txt
echo "(09-02) lspci -vvv" >> all_log_hp.txt
echo "sudo lspci -vvv" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
sudo lspci -vvv >> all_log_hp.txt
sleep 1
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt
sleep 5



echo "===========================================================================" >> all_log_hp.txt
echo "(09-03) dmidecode" >> all_log_hp.txt
echo "sudo dmidecode" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
sudo dmidecode >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt
sleep 5



echo "===========================================================================" >> all_log_hp.txt
echo "(09-04) lshw" >> all_log_hp.txt
echo "sudo lshw" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
sudo lshw >> all_log_hp.txt
sleep 5
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt



echo "===========================================================================" >> all_log_hp.txt
echo "(10-01) dmesg" >> all_log_hp.txt
echo "sudo dmesg" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
sudo dmesg >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt
sleep 5



echo "===========================================================================" >> all_log_hp.txt
echo "(10-02) cat anaconda-ks.cfg" >> all_log_hp.txt
echo "sudo cat anaconda-ks.cfg" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
sudo cat anaconda-ks.cfg >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt
echo >> all_log_hp.txt



echo "===========================================================================" >> all_log_hp.txt
echo "EOF" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
echo " `date` " >> all_log_hp.txt
echo "===========================================================================" >> all_log_hp.txt
