#!/bin/bash

# Run in Ubuntu (x86, arm)
# 기가바이트 및 범용 시스템 로그 수집

#########################
# 사전설치 S/W
# - Storcli
# - ipmitool
#########################

model=`dmidecode -t system | grep "Product Name" | cut -d" " -f 3`
serial=`dmidecode -t system | grep "Serial Number" | cut -d" " -f 3`
logFile="all_log_system_${model}_${serial}.txt"

sudo rm -rf $logFile
sleep 2


echo "===========================================================================" >> $logFile
echo " `date` " >> $logFile
echo "===========================================================================" >> $logFile
echo >> $logFile
echo >> $logFile
echo >> $logFile



echo "===========================================================================" >> $logFile
echo "(1) lshw" >> $logFile
echo "sudo lshw" >> $logFile
echo "===========================================================================" >> $logFile
sudo lshw >> $logFile
sleep 10
echo >> $logFile
echo >> $logFile
echo >> $logFile



echo "===========================================================================" >> $logFile
echo "(1-1) lshw -class system" >> $logFile
echo "sudo lshw -class system" >> $logFile
echo "===========================================================================" >> $logFile
sudo lshw -class system >> $logFile
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile



echo "===========================================================================" >> $logFile
echo "(1-2) lshw -class bridge" >> $logFile
echo "sudo lshw -class bridge" >> $logFile
echo "===========================================================================" >> $logFile
sudo lshw -class bridge >> $logFile
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile



echo "===========================================================================" >> $logFile
echo "(1-3) lshw -class memory" >> $logFile
echo "sudo lshw -class memory" >> $logFile
echo "===========================================================================" >> $logFile
sudo lshw -class memory >> $logFile
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile



echo "===========================================================================" >> $logFile
echo "(1-4) lshw -class processor" >> $logFile
echo "sudo lshw -class processor" >> $logFile
echo "===========================================================================" >> $logFile
sudo lshw -class processor >> $logFile
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile



echo "===========================================================================" >> $logFile
echo "(1-5) lshw -class address" >> $logFile
echo "sudo lshw -class address" >> $logFile
echo "===========================================================================" >> $logFile
sudo lshw -class address >> $logFile
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile



echo "===========================================================================" >> $logFile
echo "(1-6) lshw -class storage" >> $logFile
echo "sudo lshw -class storage" >> $logFile
echo "===========================================================================" >> $logFile
sudo lshw -class storage >> $logFile
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile



echo "===========================================================================" >> $logFile
echo "(1-7) lshw -class disk" >> $logFile
echo "sudo lshw -class disk" >> $logFile
echo "===========================================================================" >> $logFile
sudo lshw -class disk >> $logFile
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile



echo "===========================================================================" >> $logFile
echo "(1-8) lshw -class tape" >> $logFile
echo "sudo lshw -class tape" >> $logFile
echo "===========================================================================" >> $logFile
sudo lshw -class tape >> $logFile
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile



echo "===========================================================================" >> $logFile
echo "(1-9) lshw -class bus" >> $logFile
echo "sudo lshw -class bus" >> $logFile
echo "===========================================================================" >> $logFile
sudo lshw -class bus >> $logFile
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile



echo "===========================================================================" >> $logFile
echo "(1-10) lshw -class network" >> $logFile
echo "sudo lshw -class network" >> $logFile
echo "===========================================================================" >> $logFile
sudo lshw -class network >> $logFile
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile



echo "===========================================================================" >> $logFile
echo "(1-11) lshw -class display" >> $logFile
echo "sudo lshw -class display" >> $logFile
echo "===========================================================================" >> $logFile
sudo lshw -class display >> $logFile
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile



echo "===========================================================================" >> $logFile
echo "(1-12) lshw -class input" >> $logFile
echo "sudo lshw -class input" >> $logFile
echo "===========================================================================" >> $logFile
sudo lshw -class input >> $logFile
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile



echo "===========================================================================" >> $logFile
echo "(1-13) lshw -class printer" >> $logFile
echo "sudo lshw -class printer" >> $logFile
echo "===========================================================================" >> $logFile
sudo lshw -class printer >> $logFile
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile



echo "===========================================================================" >> $logFile
echo "(1-14) lshw -class multimedia" >> $logFile
echo "sudo lshw -class multimedia" >> $logFile
echo "===========================================================================" >> $logFile
sudo lshw -class multimedia >> $logFile
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile



echo "===========================================================================" >> $logFile
echo "(1-15) lshw -class communication" >> $logFile
echo "sudo lshw -class communication" >> $logFile
echo "===========================================================================" >> $logFile
sudo lshw -class communication >> $logFile
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile




echo "===========================================================================" >> $logFile
echo "(1-16) lshw -class power" >> $logFile
echo "sudo lshw -class power" >> $logFile
echo "===========================================================================" >> $logFile
sudo lshw -class power >> $logFile
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile



echo "===========================================================================" >> $logFile
echo "(1-17) lshw -class volume" >> $logFile
echo "sudo lshw -class volume" >> $logFile
echo "===========================================================================" >> $logFile
sudo lshw -class volume >> $logFile
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile




echo "===========================================================================" >> $logFile
echo "(1-18) lshw -class generic" >> $logFile
echo "sudo lshw -class generic" >> $logFile
echo "===========================================================================" >> $logFile
sudo lshw -class generic >> $logFile
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile

# CRA4448 or AVAGO RAID 카드 설치 된 경우
if [ -x /opt/MegaRAID/storcli/storcli64 ]; then

   echo "===========================================================================" >> $logFile
   echo "(2) R/C(CRA4448) 구성정보 확인(간략히)" >> $logFile
   echo "/opt/MegaRAID/storcli/storcli64 /c0 show" >> $logFile
   echo "===========================================================================" >> $logFile
   /opt/MegaRAID/storcli/storcli64 /c0 show >> $logFile
   sleep 1
   echo >> $logFile
   echo >> $logFile
   echo >> $logFile



   echo "===========================================================================" >> $logFile
   echo "(2-1) R/C(CRA4448) 구성정보 확인(자세히)" >> $logFile
   echo "/opt/MegaRAID/storcli/storcli64 /c0 /eall /sall show" >> $logFile
   echo "===========================================================================" >> $logFile
   /opt/MegaRAID/storcli/storcli64 /c0 /eall /sall show >> $logFile
   sleep 1
   echo >> $logFile
   echo >> $logFile
   echo >> $logFile



   echo "===========================================================================" >> $logFile
   echo "(2-2) R/C(CRA4448) 구성정보 확인(자세히)" >> $logFile
   echo "/opt/MegaRAID/storcli/storcli64 /c0 /eall /sall show all" >> $logFile
   echo "===========================================================================" >> $logFile
   /opt/MegaRAID/storcli/storcli64 /c0 /eall /sall show all >> $logFile
   sleep 1
   echo >> $logFile
   echo >> $logFile
   echo >> $logFile

# CRA3338 카드 설치 된 경우
elif [ -x /usr/local/bin/sas3ircu ]; then

   echo "===========================================================================" >> $logFile
   echo "(3) R/C(CRA3338) 구성정보 확인(간략히)" >> $logFile
   echo “/usr/local/bin/sas3ircu DISPLAY” >> $logFile
   echo "===========================================================================" >> $logFile
   /usr/local/bin/sas3ircu 0 DISPLAY >> $logFile
   sleep 1
   echo >> $logFile
   echo >> $logFile
   echo >> $logFile

   echo "===========================================================================" >> $logFile
   echo "(3-1) R/C(CRA3338) 구성정보 확인(간략히)" >> $logFile
   echo “/usr/local/bin/sas3ircu STATUS” >> $logFile
   echo "===========================================================================" >> $logFile
   /usr/local/bin/sas3ircu 0 STATUS >> $logFile
   sleep 1
   echo >> $logFile
   echo >> $logFile
   echo >> $logFile

# RAID 카드 없는 경우는 smartctl 정보 수집
else 
   echo >> $logFile
   echo >> $logFile
   echo "RAID controller is not installed" >> $logFile
   echo >> $logFile
   echo >> $logFile

   echo "===========================================================================" >> $logFile
   echo "(4) Disk 정보 확인" >> $logFile
   echo "===========================================================================" >> $logFile
   echo “smartctl -a /dev/sda” >> $logFile
   smartctl -a /dev/sda >> $logFile
   echo "===========================================================================" >> $logFile
   echo “smartctl -a /dev/sdb” >> $logFile
   smartctl -a /dev/sdb >> $logFile
   echo "===========================================================================" >> $logFile
   echo “smartctl -a /dev/nvme0n1” >> $logFile
   smartctl -a /dev/nvme0n1 >> $logFile
   sleep 1
   echo >> $logFile
   echo >> $logFile
   echo >> $logFile
fi

if [ -x /usr/bin/systool ]; then
   echo "===========================================================================" >> $logFile
   echo "(5) LPe16002(FC HBA) 정보 확인(model,serial,fw ver)" >> $logFile
   echo "systool -a -v -c scsi_host host1 | egrep Class Device|model|version|proc_name|serialnum" >> $logFile
   echo "===========================================================================" >> $logFile
   sudo systool -a -v -c scsi_host host1 | egrep "Class Device|model|version|proc_name|serialnum" >> $logFile
   sleep 1
   echo >> $logFile
   echo >> $logFile
   echo >> $logFile
fi

if [ -e /sys/class/fc_host/host1/port_name ]; then
   echo "===========================================================================" >> $logFile
   echo "(5-1) LPe16002(FC HBA) WWPN(World wide Port Name) 정보 확인(port1)" >> $logFile
   echo "cat /sys/class/fc_host/host1/port_name" >> $logFile
   echo "===========================================================================" >> $logFile
   cat /sys/class/fc_host/host1/port_name >> $logFile
   sleep 1
   echo >> $logFile
   echo >> $logFile
   echo >> $logFile
fi

if [ -e /sys/class/fc_host/host2/port_name ]; then
   echo "===========================================================================" >> $logFile
   echo "(5-2) LPe16002(FC HBA) WWPN(World wide Port Name) 정보 확인(port2)" >> $logFile
   echo "cat /sys/class/fc_host/host2/port_name" >> $logFile
   echo "===========================================================================" >> $logFile
   cat /sys/class/fc_host/host2/port_name >> $logFile
   sleep 1
   echo >> $logFile
   echo >> $logFile
   echo >> $logFile
fi

echo "===========================================================================" >> $logFile
echo "(6) 전체 PCI Slot 수와 Slot Type 확인" >> $logFile
echo "dmidecode -t slot | grep Type | wc -l" >> $logFile
echo "dmidecode -t slot | grep Type" >> $logFile
echo "===========================================================================" >> $logFile
sudo dmidecode -t slot | grep Type | wc -l >> $logFile
sudo dmidecode -t slot | grep Type >> $logFile
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile


echo "===========================================================================" >> $logFile
echo "(6-1) 사용 가능한 PCI Slot 확인" >> $logFile
echo "dmidecode -t slot | grep -i "available" | wc -l" >> $logFile
echo "===========================================================================" >> $logFile
sudo dmidecode -t slot | grep -i "available" | wc -l >> $logFile
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile


echo "===========================================================================" >> $logFile
echo "(6-2) 현재 사용중인 PCI Slot과 해당 BUS 정보 확인" >> $logFile
echo "dmidecode -t slot | grep -i "in use" -B2 -A5" >> $logFile
echo "===========================================================================" >> $logFile
sudo dmidecode -t slot | grep -i "in use" -B2 -A5 >> $logFile
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile


echo "===========================================================================" >> $logFile
echo "(7) OS 버전 정보 확인(ubuntu)" >> $logFile
echo "sudo cat /etc/os-release" >> $logFile
echo "===========================================================================" >> $logFile
sudo cat /etc/os-release >> $logFile
echo >> $logFile
echo >> $logFile
echo >> $logFile


if [ -e /etc/redhat-release ]; then
   echo "===========================================================================" >> $logFile
   echo "(7-1) OS 버전 정보 확인(centos)" >> $logFile
   echo "sudo cat /etc/redhat-release" >> $logFile
   echo "===========================================================================" >> $logFile
   sudo cat /etc/redhat-release >> $logFile
   echo >> $logFile
   echo >> $logFile
   echo >> $logFile
fi


echo "===========================================================================" >> $logFile
echo "(8) Kernel버전 및 Architecture 정보 확인" >> $logFile
echo "sudo uname -a" >> $logFile
echo "===========================================================================" >> $logFile
sudo uname -a >> $logFile
echo >> $logFile
echo >> $logFile
echo >> $logFile


echo "===========================================================================" >> $logFile
echo "(9) CPU 정보 확인" >> $logFile
echo "sudo lscpu" >> $logFile
echo "===========================================================================" >> $logFile
sudo lscpu >> $logFile
echo >> $logFile
echo >> $logFile
echo >> $logFile



echo "===========================================================================" >> $logFile
echo "(10) List block devices" >> $logFile
echo "sudo lsblk" >> $logFile
echo "===========================================================================" >> $logFile
sudo lsblk >> $logFile
echo >> $logFile
echo >> $logFile
echo >> $logFile



echo "===========================================================================" >> $logFile
echo "(10-1) Partiton 정보 확인" >> $logFile
echo "sudo df -h" >> $logFile
echo "===========================================================================" >> $logFile
sudo df -h >> $logFile
echo >> $logFile
echo >> $logFile
echo >> $logFile



echo "===========================================================================" >> $logFile
echo "(10-2) fdisk" >> $logFile
echo "sudo fdisk -l" >> $logFile
echo "===========================================================================" >> $logFile
sudo fdisk -l >> $logFile
echo >> $logFile
echo >> $logFile
echo >> $logFile


echo "===========================================================================" >> $logFile
echo "(10-3) mdstat" >> $logFile
echo "sudo cat /proc/mdstat" >> $logFile
echo "===========================================================================" >> $logFile
sudo cat /proc/mdstat >> $logFile
echo >> $logFile
echo >> $logFile
echo >> $logFile


echo "===========================================================================" >> $logFile
echo "(11) ip addr" >> $logFile
echo "sudo ip addr" >> $logFile
echo "===========================================================================" >> $logFile
sudo ip addr >> $logFile
echo >> $logFile
echo >> $logFile
echo >> $logFile


echo "===========================================================================" >> $logFile
echo "(12) ipmitool lan print" >> $logFile
echo "sudo ipmitool lan print" >> $logFile
echo "===========================================================================" >> $logFile
sudo ipmitool lan print >> $logFile
echo >> $logFile
echo >> $logFile
echo >> $logFile



echo "===========================================================================" >> $logFile
echo "(12-1) ipmitool -I open chassis status" >> $logFile
echo "sudo ipmitool -I open chassis status" >> $logFile
echo "===========================================================================" >> $logFile
sudo ipmitool -I open chassis status >> $logFile
echo >> $logFile
echo >> $logFile
echo >> $logFile



echo "===========================================================================" >> $logFile
echo "(12-2) Management Controller 정보 확인 (IPMI firmware 정보, 제조사 등)" >> $logFile
echo "sudo ipmitool -I open mc info" >> $logFile
echo "===========================================================================" >> $logFile
sudo ipmitool -I open mc info >> $logFile
echo >> $logFile
echo >> $logFile
echo >> $logFile



echo "===========================================================================" >> $logFile
echo "(12-3) iManagement Controller Channel 정보 확인" >> $logFile
echo "sudo ipmitool -I open channel info 1" >> $logFile
echo "===========================================================================" >> $logFile
sudo ipmitool -I open channel info 1 >> $logFile
echo >> $logFile
echo >> $logFile
echo >> $logFile



echo "===========================================================================" >> $logFile
echo "(12-4) ipmitool" >> $logFile
echo "sudo ipmitool sdr" >> $logFile
echo "===========================================================================" >> $logFile
sudo ipmitool sdr >> $logFile
echo >> $logFile
echo >> $logFile
echo >> $logFile
sleep 2



echo "===========================================================================" >> $logFile
echo "(12-5) ipmitool sensor 정보를 더 자세히 확인(HDD fault 등)" >> $logFile
echo "sudo ipmitool sdr elist" >> $logFile
echo "===========================================================================" >> $logFile
sudo ipmitool sdr elist >> $logFile
echo >> $logFile
echo >> $logFile
echo >> $logFile
sleep 2



echo "===========================================================================" >> $logFile
echo "(12-6) ipmitool sensor 정보를 더 자세히 확인(HDD fault 등)" >> $logFile
echo "sudo ipmitool sdr -v" >> $logFile
echo "===========================================================================" >> $logFile
sudo ipmitool sdr -v >> $logFile
echo >> $logFile
echo >> $logFile
echo >> $logFile
sleep 2



echo "===========================================================================" >> $logFile
echo "(12-7) ipmitool sensor" >> $logFile
echo "sudo ipmitool sensor" >> $logFile
echo "===========================================================================" >> $logFile
sudo ipmitool sensor >> $logFile
echo >> $logFile
echo >> $logFile
echo >> $logFile



echo "===========================================================================" >> $logFile
echo "(12-8) ipmitool -I open fru" >> $logFile
echo "sudo ipmitool -I open fru" >> $logFile
echo "===========================================================================" >> $logFile
sudo ipmitool -I open fru >> $logFile
echo >> $logFile
echo >> $logFile
echo >> $logFile




echo "===========================================================================" >> $logFile
echo "(12-9) ipmitool -I open sel list" >> $logFile
echo "sudo ipmitool -I open sel list" >> $logFile
echo "===========================================================================" >> $logFile
sudo ipmitool -I open sel list >> $logFile
echo >> $logFile
echo >> $logFile
echo >> $logFile
sleep 5


echo "===========================================================================" >> $logFile
echo "(12-10) ipmitool -I open lan print" >> $logFile
echo "sudo ipmitool -I open lan print" >> $logFile
echo "===========================================================================" >> $logFile
sudo ipmitool -I open lan print >> $logFile
echo >> $logFile
echo >> $logFile
echo >> $logFile



echo "===========================================================================" >> $logFile
echo "(12-11) ipmitool -I open chassis policy list" >> $logFile
echo "sudo ipmitool -I open chassis policy list" >> $logFile
echo "===========================================================================" >> $logFile
sudo ipmitool -I open chassis policy list >> $logFile
echo >> $logFile
echo >> $logFile
echo >> $logFile



echo "===========================================================================" >> $logFile
echo "(12-12) SOL(Serial-over-LAN), 콘솔화면을 보기위한 설정 정보를 확인 (인증 허용 여부, Serial BPS 등)" >> $logFile
echo "sudo ipmitool -I open sol info 1" >> $logFile
echo "===========================================================================" >> $logFile
sudo ipmitool -I open sol info 1 >> $logFile
echo >> $logFile
echo >> $logFile
echo >> $logFile



echo "===========================================================================" >> $logFile
echo "(12-13) ipmitool -I open chassis bootparam get 5" >> $logFile
echo "sudo ipmitool -I open chassis bootparam get 5" >> $logFile
echo "===========================================================================" >> $logFile
sudo ipmitool -I open chassis bootparam get 5 >> $logFile
echo >> $logFile
echo >> $logFile
echo >> $logFile



echo "===========================================================================" >> $logFile
echo "(12-14) ipmitool -I open dcmi discover" >> $logFile
echo "sudo ipmitool -I open dcmi discover" >> $logFile
echo "===========================================================================" >> $logFile
sudo ipmitool -I open dcmi discover >> $logFile
echo >> $logFile
echo >> $logFile
echo >> $logFile



echo "===========================================================================" >> $logFile
echo "(13) lspci" >> $logFile
echo "sudo lspci" >> $logFile
echo "===========================================================================" >> $logFile
sudo lspci >> $logFile
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile



echo "===========================================================================" >> $logFile
echo "(13-1) lspci -vvv" >> $logFile
echo "sudo lspci -vvv" >> $logFile
echo "===========================================================================" >> $logFile
sudo lspci -vvv >> $logFile
sleep 5
echo >> $logFile
echo >> $logFile
echo >> $logFile


echo "===========================================================================" >> $logFile
echo "(14) dmidecode" >> $logFile
echo "sudo dmidecode" >> $logFile
echo "===========================================================================" >> $logFile
sudo dmidecode >> $logFile
echo >> $logFile
echo >> $logFile
echo >> $logFile
sleep 5


echo "===========================================================================" >> $logFile
echo "(15) dmesg" >> $logFile
echo "sudo dmesg" >> $logFile
echo "===========================================================================" >> $logFile
sudo dmesg >> $logFile
echo >> $logFile
echo >> $logFile
echo >> $logFile
sleep 5


if [ -e /root/anaconda-ks.cfg ]; then
   echo "===========================================================================" >> $logFile
   echo "(16) cat anaconda-ks.cfg" >> $logFile
   echo "sudo cat anaconda-ks.cfg" >> $logFile
   echo "===========================================================================" >> $logFile
   sudo cat anaconda-ks.cfg >> $logFile
   echo >> $logFile
   echo >> $logFile
   echo >> $logFile
   sleep 5
fi

if [ -e /usr/bin/nvidia-smi ]; then
   echo "===========================================================================" >> $logFile
   echo "(17) nvidia-smi " >> $logFile
   echo "nvidia-smi" >> $logFile
   echo "===========================================================================" >> $logFile
   sudo nvidia-smi >> $logFile
   echo >> $logFile
   echo >> $logFile
   echo >> $logFile
   sleep 5

   echo "===========================================================================" >> $logFile
   echo "(17-1) GPU Card Model, Serial" >> $logFile
   echo "nvidia-smi --query-gpu=name,serial --format=csv" >> $logFile
   echo "===========================================================================" >> $logFile
   sudo nvidia-smi --query-gpu=name,serial --format=csv >> $logFile
   echo >> $logFile
   echo >> $logFile
   echo >> $logFile
   sleep 5
fi

echo -e "=========================SYSTEM SUMMARY=================================" >> $logFile
echo >> $logFile
echo >> $logFile
echo >> $logFile

DMIDECODE(){

local dmidecode_input
dmidecode_input=$(dmidecode 2>/dev/null)

echo -e "DMIDECODE"	>> $logFile
echo -e "  BIOS:"	>> $logFile
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
      }
    ' >> $logFile

echo -e "  System:" >> $logFile
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
    ' >> $logFile
echo -e "  CPU:" >> $logFile
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
    ' >> $logFile

echo -e "  Memory:" >> $logFile
  MemSize=`dmidecode -t memory | grep Size | head -1`
  MemSize=`gawk '{print $2}' <<<"$MemSize"`
  echo -e "    Memory Size: $MemSize GB" >> $logFile
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
    ' >> $logFile
echo >> $logFile
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

echo -e "OS" >> $logFile
echo -e "  Hostname: $hostname" >> $logFile
echo -e "  Distro:   $distro_release" >> $logFile
echo -e "  Arch:     $uname" >> $logFile
echo -e "  Kernel:" >> $logFile
echo -e "    Booted kernel:  $kernel" >> $logFile
echo -e "    Booted kernel cmdline:" >> $logFile
echo -e "         $proc_cmdline"  >> $logFile
echo -e "  Sys time:  $systime" >> $logFile
echo -e "  Boot time:  $boottime" >> $logFile
echo -e "  Time Zone:  $timezone" >> $logFile
echo -e "  Uptime:  $uptime_input" >> $logFile
echo >> $logFile
}

STORAGE(){
  echo -e "STORAGE" >> $logFile
  lsblk_input=$(lsblk 2>/dev/null)
  df_input=$(df -al -x autofs 2>/dev/null)
  partitions_input=$1/proc/partitions

  [[ -n $scsi_blacklist ]] && bl=y || { bl=n; scsi_blacklist=NULL; }
  [[ -f $1 ]] && partitions_input=$1 || partitions_input=$1/proc/partitions
  echo -e "  Whole Disks from /proc/partitions:" >> $logFile
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
    ' >> $logFile

    XSOS_INDENT_H2="    "
    if [[ -n $lsblk_input ]]; then
      echo -e "\n  Disk layout from lsblk:" >> $logFile
      echo -en "$lsblk_input" | gawk -vH_IMP="${c[Imp]}" -vH0="${c[0]}" '
                                  # for lines after the first, print normal output 
                                  (NR > 1) {print}
                                  # print bold header on the first line
                                  (NR == 1) {printf "%s%s%s\n", H_IMP, $0, H0}
                                ' | sed "s,^,$XSOS_INDENT_H2,"  >> $logFile
    fi
    if [[ -n $df_input ]]; then
      echo -e "\n  Filesystem usage from df:" >> $logFile
      echo -en "$df_input" | gawk -vH_IMP="${c[Imp]}" -vH0="${c[0]}" '
                               # for lines after the first, print normal output 
                               # match filesystems with a "/" in the name to avoid noise like tmpfs, cgroup, proc, sysfs, etc
                               (NR > 1) && ($1 ~ /\//) {print}
                               # print bold header on the first line
                               (NR == 1) {printf "%s%s%s\n", H_IMP, $0, H0}
                             ' | sed "s,^,$XSOS_INDENT_H2,"  >> $logFile
    fi

echo >> $logFile
}

LSPCI() {
  
  lspci_input=$(lspci)

  echo -e "LSPCI" >> $logFile
  
  cnt=`gawk '/Ethernet/' <<<"$lspci_input" | wc -l`
  echo -e "  Ethernet: $cnt ea" >> $logFile
  gawk '/Ethernet/{print "    " $0}' <<<"$lspci_input"  >> $logFile

  echo -e "  RAID Card:"  >> $logFile
  gawk '/RAID/{print "    " $0}' <<<"$lspci_input"  >> $logFile

  cnt=`gawk '/Fibre/' <<<"$lspci_input" | wc -l`
  echo -e "  Fibre Channel: $cnt ea" >> $logFile
  gawk '/Fibre/{print "    " $0}' <<<"$lspci_input" >> $logFile

echo >> $logFile
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
  echo -e "IP Address" >> $logFile
  
  # The bracket here is like using parens to make a subshell -- allows to capture all stdout
  {
    # Header info ("❚" is used later by `column` to columnize the output)
    echo -e "  Interface       MAC Address       MTU     State  IPv4 Address" >> $logFile
    echo -e "  =========      =================  ======  =====  ==================" >> $logFile
    
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
              echo -e "  ${i}   ${mac[$i]}   ${mtu[$i]}   ${state[$i]}   ${ipaddr}" >> $logFile
            else
              echo -e "   \t \t \t \t \t${ipaddr}" >> $logFile
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
          echo "  ${i}   ${mac[$i]}   ${mtu[$i]}   ${state[$i]}   -" >> $logFile
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
        }' >> $logFile
}


DMIDECODE
OSINFO
STORAGE
LSPCI
IPADDR


echo "===========================================================================" >> $logFile
echo " `date` " >> $logFile
echo "===========================================================================" >> $logFile
