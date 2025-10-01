#!/bin/bash

# For HP system log collection

#########################
# 사전설치 S/W
# - ilorest
# - ipmitool
#########################

# Run in Ubuntu (x86, arm)
# System hardware information collector
# update

#manufacturer=`ipmitool fru print | grep "Product Manufacturer" | head -1 | cut -c 26-`
#logFile="all_log_system.txt"

#if [ $manufacturer = "GIGABYTE" ] 
#then
model=$(ipmitool fru print | grep "Product Name" | head -1 | cut -d":" -f2)
serial=$(ipmitool fru print | grep "Product Serial" | head -1 | cut -d":" -f2)

model=$(echo $model | tr -d ' ')
serial=$(echo $serial)
logFile="all_log_system_${model}_${serial}.txt"
#fi

sudo rm -rf $logFile

declare -A c
c[0]='\033[0;0m'
c[H1]='\033[1;31m'
c[H2]='\033[1;35m'
c[H3]='\033[1;34m'
c[Imp]='\033[0;0m\033[1;1m'

echo -e "${c[H3]}========== SYSTEM SUMMARY START ===========${c[0]}"
echo -e "=========================SYSTEM SUMMARY=================================" >> $logFile
echo >> $logFile

DMIDECODE(){

local dmidecode_input
dmidecode_input=$(dmidecode 2>/dev/null)

# Display on console
echo -e "${c[H1]}DMIDECODE${c[0]}"
echo -e "${c[H2]}  BIOS:${c[0]}"
gawk 'BEGIN { RS="\nHandle" } /BIOS Information/' <<<"$dmidecode_input" |
    gawk -F: -vH3="${c[H3]}" -vH2="${c[H2]}" -vH0="${c[0]}" -vH_IMP="${c[Imp]}" '
      /Vendor:/            { Vendor  = $2; gsub(/  */, " ", Vendor) }
      /Version:/           { Version = $2; gsub(/  */, " ", Version) }
      /Release Date:/      { RelDate = $2; gsub(/  */, " ", RelDate) }
      /BIOS Revision:/     { BiosRev = $2; gsub(/  */, " ", BiosRev) }
      END {
	printf "    %sVend:%s%s\n", H3, H0, Vendor
        printf "    %sVers:%s%s\n", H3, H0, Version
        printf "    %sDate:%s%s\n", H3, H0, RelDate
        printf "    %sBIOS Rev:%s%s\n", H3, H0, BiosRev
      }
    ' 
echo -e "${c[H2]}  System:${c[0]}"
  gawk 'BEGIN { RS="\nHandle" } /System Information/' <<<"$dmidecode_input" |
      gawk -F: -vH3="${c[H3]}" -vH2="${c[H2]}" -vH0="${c[0]}" -vH_IMP="${c[Imp]}" '
      /Manufacturer:/ { Mfr     = $2; gsub(/  */, " ", Mfr) }
      /Product Name:/ { Product = $2; gsub(/  */, " ", Product) }
      /Version:/      { Version = $2; gsub(/  */, " ", Version) }
      /Serial Number:/{ Serial  = $2 }
      END {
        printf "    %sMfr:%s %s\n", H3, H0, Mfr
        printf "    %sProd:%s%s\n", H3, H0, Product
        printf "    %sVers:%s%s\n", H3, H0, Version
        printf "    %sSer:%s %s\n", H3, H0, Serial
      }
    '
echo -e "${c[H2]}  CPU:${c[0]}"
  gawk 'BEGIN { RS="\nHandle" } /Processor Information/' <<<"$dmidecode_input" |
    gawk -F: -vH3="${c[H3]}" -vH2="${c[H2]}" -vH0="${c[0]}" -vH_IMP="${c[Imp]}" '
      /Status:/       { SumSockets ++; if ($2 ~ /Populated/) PopulatedSockets ++ }
      /Core Count:/   { SumCores   += $2; CoresPerCpu = $2 }
      /Thread Count:/ { SumThreads += $2; ThreadsPerCpu = $2 }
      /Manufacturer:/ { if ($2 ~ /^ *$|Not|Unknown/)          next; Mfr      = $2; gsub(/  */, " ", Mfr) }
      /Family:/       { if ($2 ~ /^ *$|Other|<OUT|Unknown/)   next; Family   = $2; gsub(/  */, " ", Family) }
      /Current Speed:/{ if ($2 ~ /^ *$|Unknown/)              next; CpuFreq  = $2; gsub(/  */, " ", CpuFreq) }
      /Version:/      { if ($2 ~ /^ *$|Not/)                  next; Version  = $2; gsub(/  */, " ", Version) }
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
  MemSize=`dmidecode -t memory | grep Size | head -1 | cut -d":" -f2`
  echo -e "${c[H3]}    Memory Size:${c[0]}${MemSize}" 
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
# Write log file
echo -e "DMIDECODE"	>> $logFile
echo -e "  BIOS:"	>> $logFile
gawk 'BEGIN { RS="\nHandle" } /BIOS Information/' <<<"$dmidecode_input" |
    gawk -F: -vH3="${c[H3]}" -vH2="${c[H2]}" -vH0="${c[0]}" -vH_IMP="${c[Imp]}" '
      /Vendor:/            { Vendor  = $2; gsub(/  */, " ", Vendor) }
      /Version:/           { Version = $2; gsub(/  */, " ", Version) }
      /Release Date:/      { RelDate = $2; gsub(/  */, " ", RelDate) }
      /BIOS Revision:/     { BiosRev = $2; gsub(/  */, " ", BiosRev) }
      END {
        printf "    Vend:%s\n", Vendor
        printf "    Vers:%s\n", Version
        printf "    Date:%s\n", RelDate
        printf "    BIOS Rev:%s\n", BiosRev
      }
    ' >> $logFile

echo -e "  System:" >> $logFile
  gawk 'BEGIN { RS="\nHandle" } /System Information/' <<<"$dmidecode_input" |
      gawk -F: -vH3="${c[H3]}" -vH2="${c[H2]}" -vH0="${c[0]}" -vH_IMP="${c[Imp]}" '
      /Manufacturer:/ { Mfr     = $2; gsub(/  */, " ", Mfr) }
      /Product Name:/ { Product = $2; gsub(/  */, " ", Product) }
      /Version:/      { Version = $2; gsub(/  */, " ", Version) }
      /Serial Number:/{ Serial  = $2 }
      END {
        printf "    Mfr: %s\n", Mfr
        printf "    Prod:%s\n", Product
        printf "    Vers:%s\n", Version
        printf "    Ser: %s\n", Serial
      }
    ' >> $logFile

echo -e "  CPU:" >> $logFile
  gawk 'BEGIN { RS="\nHandle" } /Processor Information/' <<<"$dmidecode_input" |
    gawk -F: -vH3="${c[H3]}" -vH2="${c[H2]}" -vH0="${c[0]}" -vH_IMP="${c[Imp]}" '
      /Status:/       { SumSockets ++; if ($2 ~ /Populated/) PopulatedSockets ++ }
      /Core Count:/   { SumCores   += $2; CoresPerCpu = $2 }
      /Thread Count:/ { SumThreads += $2; ThreadsPerCpu = $2 }
      /Manufacturer:/ { if ($2 ~ /^ *$|Not|Unknown/)          next; Mfr      = $2; gsub(/  */, " ", Mfr) }
      /Family:/       { if ($2 ~ /^ *$|Other|<OUT|Unknown/)   next; Family   = $2; gsub(/  */, " ", Family) }
      /Current Speed:/{ if ($2 ~ /^ *$|Unknown/)              next; CpuFreq  = $2; gsub(/  */, " ", CpuFreq) }
      /Version:/      { if ($2 ~ /^ *$|Not/)                  next; Version  = $2; gsub(/  */, " ", Version) }
      END {
        printf "    %d of %d CPU sockets populated, %d cores/%d threads per CPU\n",
          PopulatedSockets, SumSockets, CoresPerCpu, ThreadsPerCpu
        printf "    %d total cores, %d total threads\n", SumCores, SumThreads, H0
        printf "    Mfr: %s\n", Mfr
        printf "    Fam: %s\n", Family
        printf "    Freq:%s\n", CpuFreq
        printf "    Vers:%s\n", Version
      }
    ' >> $logFile

echo -e "  Memory:" >> $logFile
  MemSize=`dmidecode -t memory | grep Size | head -1 | cut -d":" -f2`
  echo -e "    Memory Size:${MemSize}" >> $logFile 
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
        printf "    DIMMs: %d populated\n", NumDimms
        printf "    Total: %d MiB (%.0f GiB)\n", SumRam, SumRam/1024
      }
    ' >> $logFile
echo -e "\n"
echo >> $logFile
}

OSINFO(){
    OS_INDENT="            "
    if [[ ! -r $1/etc/redhat-release ]]; then
       distro_release="[redhat-release] (missing)"
    fi
    if source "$1/etc/os-release" 2>/dev/null; then
       distro_release="$distro_release\n$OS_INDENT[os-release] $PRETTY_NAME $VERSION"
    fi

    hostname=$(cat "$1/proc/sys/kernel/hostname" 2>/dev/null)
    kernel=$(cat "$1/proc/sys/kernel/osrelease" 2>/dev/null)
    btime=$(gawk '/^btime/{print $2}' "$1/proc/stat" 2>/dev/null)
    uname=$(uname -a | gawk '{printf "mach=%s  cpu=%s  platform=%s\n", $(NF-3), $(NF-2), $(NF-1)}')
    systime=$(date)
    boottime=$(date --date=@$btime 2>/dev/null)
    [[ -r /etc/sysconfig/clock ]] &&
      timezone=$(gawk -F= '/^ZONE=/{print $2}' "/etc/sysconfig/clock" 2>/dev/null | tr -d \")
    [[ -x $(which timedatectl 2>/dev/null) ]] &&
      timezone=$(timedatectl | gawk '/Time zone/ {print $3}' 2>/dev/null)
    uptime_input=$(uptime)
    proc_cmdline=$(sed -r 's,^BOOT_IMAGE=/[[:graph:]]+ ,,' "$1"/proc/cmdline)

# Display on console
echo -e "${c[H1]}OS${c[0]}"
echo -e "  ${c[H2]}Hostname:${c[0]} $hostname"
echo -e "  ${c[H2]}Distro:${c[0]}   $distro_release"
echo -e "  ${c[H2]}Arch:${c[0]}     $uname"
echo -e "  ${c[H2]}Kernel:${c[0]}"
echo -e "    ${c[H3]}Booted kernel:${c[0]}  $kernel"
echo -e "    ${c[H3]}Booted kernel cmdline:${c[0]}"
echo -e "         $proc_cmdline"
echo -e "  ${c[H2]}Sys time :${c[0]} $systime"
echo -e "  ${c[H2]}Boot time:${c[0]} $boottime"
echo -e "  ${c[H2]}Time Zone:${c[0]} $timezone"
echo -e "  ${c[H2]}Uptime   :${c[0]} $uptime_input"

# Write log file
echo -e "OS" >> $logFile
echo -e "  Hostname: $hostname" >> $logFile
echo -e "  Distro:   $distro_release" >> $logFile
echo -e "  Arch:     $uname" >> $logFile
echo -e "  Kernel:" >> $logFile
echo -e "    Booted kernel:  $kernel" >> $logFile
echo -e "    Booted kernel cmdline:" >> $logFile
echo -e "         $proc_cmdline"  >> $logFile
echo -e "  Sys time :  $systime" >> $logFile
echo -e "  Boot time:  $boottime" >> $logFile
echo -e "  Time Zone:  $timezone" >> $logFile
echo -e "  Uptime   :  $uptime_input" >> $logFile

echo -e "\n"
echo >> $logFile
}

STORAGE(){

# Display on console
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
	
# Write log file
echo -e "STORAGE" >> $logFile
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
      printf   "    %d disks, totaling %.0f GiB (%.2f TiB)\n", numdisks, sum_gb, sum_gb/1024
        
      # Print a notice if devices were hidden due to blacklist
      if (blacklisted == "y")
        printf "    %s(%d multipath/mdraid components hidden)%s\n", H_IMP, blacklist_devcount, H0
        
      # Some pretty header-fun
      printf   "    - - - - - - - - - - - - - - - - - - - - -\n"
      printf   "    Disk \tSize in GiB\n"
      printf   "    ----\t-----------\n"
        
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
                                (NR == 1) {printf "%s\n", $0}
                              ' | sed "s,^,$XSOS_INDENT_H2,"  >> $logFile
  fi
  if [[ -n $df_input ]]; then
    echo -e "\n  Filesystem usage from df:" >> $logFile
    echo -en "$df_input" | gawk -vH_IMP="${c[Imp]}" -vH0="${c[0]}" '
                             # for lines after the first, print normal output 
                             # match filesystems with a "/" in the name to avoid noise like tmpfs, cgroup, proc, sysfs, etc
                             (NR > 1) && ($1 ~ /\//) {print}
                             # print bold header on the first line
                             (NR == 1) {printf "%s\n", $0}
                           ' | sed "s,^,$XSOS_INDENT_H2,"  >> $logFile
  fi

echo -e "\n"
echo >> $logFile
}

LSPCI() {
  
  lspci_input=$(lspci)
  
  raid_cnt=`gawk '/LSI/' <<<"$lspci_input" | wc -l`
  net_cnt=`gawk '/Ethernet/' <<<"$lspci_input" | wc -l`
  fc_cnt=`gawk '/Fibre/' <<<"$lspci_input" | wc -l`

# Display on consloe

  echo -e "${c[H1]}LSPCI${c[0]}"

  echo -e "${c[H2]}  RAID Card: ${raid_cnt} ea ${c[0]}"
  gawk '/LSI/{print "    " $0}' <<<"$lspci_input"
  
  echo -e "${c[H2]}  Ethernet: ${net_cnt} ea ${c[0]}"
  gawk '/Ethernet/{print "    " $0}' <<<"$lspci_input"

  echo -e "${c[H2]}  Fibre Channel: ${fc_cnt} ea ${c[0]}"
  gawk '/Fibre/{print "    " $0}' <<<"$lspci_input" 


# Write log file
  echo -e "LSPCI" >> $logFile

  echo -e "  RAID Card: $raid_cnt ea"  >> $logFile
  gawk '/LSI/{print "    " $0}' <<<"$lspci_input"  >> $logFile

  echo -e "  Ethernet: $net_cnt ea" >> $logFile
  gawk '/Ethernet/{print "    " $0}' <<<"$lspci_input"  >> $logFile

  echo -e "  Fibre Channel: $fc_cnt ea" >> $logFile
  gawk '/Fibre/{print "    " $0}' <<<"$lspci_input" >> $logFile

echo -e "\n"
echo >> $logFile
}

IPADDR() {

  # Local vars:
  local ip_a_input ipdevs
  
  # If localhost, use ip addr
  ip_a_input=$(ip a)
  
  # Prepare ip addr input for gawk by separating each interface block
  ip_a_input=$(sed -e 's,^[0-9]*: ,\n&,' -e '1s,^,\n,' <<<"${ip_a_input}")
  
  # Grab a list of the interface names
  ipdevs=$(gawk -F: 'BEGIN {RS="\n\n"} {print $2}' <<<"${ip_a_input}" | egrep -v 'sit0|lo')
  
  # Begin ...
  echo -e "${c[H1]}IP Address${c[0]}"
  echo -e "IP Address" >> $logFile
  
  # The bracket here is like using parens to make a subshell -- allows to capture all stdout
  {
    # Header info ("❚" is used later by `column` to columnize the output)
    echo -e "  Interface       MAC Address       MTU     State  IPv4 Address" 
    echo -e "  =========      =================  ======  =====  =================="

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
              echo -e "  ${i}      ${mac[$i]}      ${mtu[$i]}      ${state[$i]}    ${ipaddr}"
              echo -e "  ${i}      ${mac[$i]}      ${mtu[$i]}      ${state[$i]}    ${ipaddr}" >> $logFile
            else
              echo -e "   \t \t \t \t \t${ipaddr}"
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
          echo -e "  ${i}      ${mac[$i]}      ${mtu[$i]}      ${state[$i]}   -  "
          echo -e "  ${i}      ${mac[$i]}      ${mtu[$i]}      ${state[$i]}   -  " >> $logFile
          # ... And Continue on to the next interface, i.e., skip looking for aliases
          continue
        fi
    done
  } 
}

DMIDECODE
OSINFO
STORAGE
LSPCI
IPADDR 

prog() {
   sleep .5
   local w=60 p=$1;  shift
   # create a string of spaces, then change them to dots
   printf -v dots "%*s" "$(( $p*$w/100 ))" ""; dots=${dots// /\#};
   # print those dots on a fixed-width space plus the percentage etc. 
   printf "\r\e[KProcessing...|%-*s| %3d %% %s" "$w" "$dots" "$p" "$*"; 
}

echo -e "\n"
echo -e "${c[H3]}========== SYSTEM SUMMARY END =============${c[0]}"

echo -e "\nStart to collecting log. Please wait a few miutes."


echo "===========================================================================" >> $logFile
echo " `date` " >> $logFile
echo "===========================================================================" >> $logFile
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 1


echo "===========================================================================" >> $logFile
echo "(01-01) ilorest" >> $logFile
echo "/usr/sbin/ilorest serverlogs --selectlog=IML" >> $logFile
echo "===========================================================================" >> $logFile
/usr/sbin/ilorest serverlogs --selectlog=IML >> $logFile 2>&1 
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 3


echo "===========================================================================" >> $logFile
echo "(02-01) Temperature" >> $logFile
echo "/usr/sbin/ilorest serverinfo --thermals" >> $logFile
echo "===========================================================================" >> $logFile
/usr/sbin/ilorest serverinfo --thermals >> $logFile 2>&1 
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 5


echo "===========================================================================" >> $logFile
echo "(02-02) FAN info" >> $logFile
echo "/usr/sbin/ilorest serverinfo --fans" >> $logFile
echo "===========================================================================" >> $logFile
/usr/sbin/ilorest serverinfo --fans >> $logFile 2>&1 
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 7

echo "===========================================================================" >> $logFile
echo "(02-03) powersupply info" >> $logFile
echo "/usr/sbin/ilorest serverinfo --power" >> $logFile
echo "===========================================================================" >> $logFile
/usr/sbin/ilorest serverinfo --power >> $logFile 2>&1 
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 9


echo "===========================================================================" >> $logFile
echo "(03-01) show asr" >> $logFile
echo "/usr/sbin/ilorest get --selector=Bios | grep AsrTimeoutMinutes" >> $logFile
echo "===========================================================================" >> $logFile
/usr/sbin/ilorest get --selector=Bios | grep AsrTimeoutMinutes >> $logFile 2>&1 
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 11

echo "===========================================================================" >> $logFile
echo "(03-02) show boot" >> $logFile
echo "/usr/sbin/ilorest bootorder" >> $logFile
echo "===========================================================================" >> $logFile
/usr/sbin/ilorest bootorder >> $logFile 2>&1 
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 13


echo "===========================================================================" >> $logFile
echo "(03-03) show ht" >> $logFile
echo "/usr/sbin/ilorest get --selector=Bios | grep ProcHyperthreading" >> $logFile
echo "===========================================================================" >> $logFile
/usr/sbin/ilorest get --selector=Bios | grep ProcHyperthreading >> $logFile 2>&1 
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 15


echo "===========================================================================" >> $logFile
echo "(03-04) show iml" >> $logFile
echo "/usr/sbin/ilorest serverlogs --selectlog=IML" >> $logFile
echo "===========================================================================" >> $logFile
/usr/sbin/ilorest serverlogs --selectlog=IML >> $logFile 2>&1 
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 17



echo "===========================================================================" >> $logFile
echo "(03-05) show powermeter" >> $logFile
echo "/usr/sbin/ilorest serverinfo --power | grep "Total Power Consumed"" >> $logFile
echo "===========================================================================" >> $logFile
/usr/sbin/ilorest serverinfo --power | grep "Total Power Consumed" >> $logFile 2>&1 
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 18


echo "===========================================================================" >> $logFile
echo "(03-06) show serial bios" >> $logFile
echo "(03-07) show serial embedded" >> $logFile
echo "/usr/sbin/ilorest get --selector=Bios | grep Serial" >> $logFile
echo "===========================================================================" >> $logFile
/usr/sbin/ilorest get --selector=Bios | grep Serial >> $logFile 2>&1 
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 20



echo "===========================================================================" >> $logFile
echo "(04-01) R/C 구성정보 확인(간략히)" >> $logFile
echo "ilorest storagecontroller" >> $logFile
echo "===========================================================================" >> $logFile
ilorest storagecontroller >> $logFile 2>&1 
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 21

storageid=$(ilorest storagecontroller | grep HPE | cut -d":" -f 1)

echo "===========================================================================" >> $logFile
echo "(04-02) R/C 구성정보 확인(자세히)" >> $logFile
echo "ilorest storagecontroller --storageid=$storageid" >> $logFile
echo "===========================================================================" >> $logFile
ilorest storagecontroller --storageid=$storageid >> $logFile 2>&1 
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 22

echo "===========================================================================" >> $logFile
echo "(04-02) R/C pysical drives 구성정보 확인" >> $logFile
echo "ilorest smartarray --physicaldrives --storageid=$storageid" >> $logFile
echo "===========================================================================" >> $logFile
ilorest smartarray --physicaldrives --storageid=$storageid >> $logFile 2>&1 
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 24

echo "===========================================================================" >> $logFile
echo "(04-02) R/C volume 구성정보 확인" >> $logFile
echo "ilorest smartarray --logicaldrives --storageid=$storageid" >> $logFile
echo "===========================================================================" >> $logFile
ilorest smartarray --logicaldrives --storageid=$storageid >> $logFile 2>&1 
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 26


echo "===========================================================================" >> $logFile
echo "(06-01) OS 버전 정보 확인(ubuntu)" >> $logFile
echo "sudo cat /etc/os-release" >> $logFile
echo "===========================================================================" >> $logFile
sudo cat /etc/os-release >> $logFile 2>&1 
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 28


echo "===========================================================================" >> $logFile
echo "(06-02) OS 버전 정보 확인(centos)" >> $logFile
echo "sudo cat /etc/redhat-release" >> $logFile
echo "===========================================================================" >> $logFile
sudo cat /etc/redhat-release >> $logFile 2>&1 
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 29


echo "===========================================================================" >> $logFile
echo "(06-03) Kernel버전 및 Architecture 정보 확인" >> $logFile
echo "sudo uname -a" >> $logFile
echo "===========================================================================" >> $logFile
sudo uname -a >> $logFile 2>&1 
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 30


echo "===========================================================================" >> $logFile
echo "(06-04) CPU 정보 확인" >> $logFile
echo "sudo lscpu" >> $logFile
echo "===========================================================================" >> $logFile
sudo lscpu >> $logFile 2>&1 
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 32


echo "===========================================================================" >> $logFile
echo "(06-05) List block devices" >> $logFile
echo "sudo lsblk" >> $logFile
echo "===========================================================================" >> $logFile
sudo lsblk >> $logFile 2>&1 
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 34


echo "===========================================================================" >> $logFile
echo "(06-06) Partiton 정보 확인" >> $logFile
echo "sudo df -h" >> $logFile
echo "===========================================================================" >> $logFile
sudo df -h >> $logFile 2>&1 
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 35


echo "===========================================================================" >> $logFile
echo "(06-07) fdisk" >> $logFile
echo "sudo fdisk -l" >> $logFile
echo "===========================================================================" >> $logFile
sudo fdisk -l >> $logFile 2>&1 
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 37


echo "===========================================================================" >> $logFile
echo "(06-08) ip addr" >> $logFile
echo "sudo ip addr" >> $logFile
echo "===========================================================================" >> $logFile
sudo ip addr >> $logFile 2>&1 
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 38


echo "===========================================================================" >> $logFile
echo "(06-09) mdstat" >> $logFile
echo "sudo cat /proc/mdstat" >> $logFile
echo "===========================================================================" >> $logFile
sudo cat /proc/mdstat >> $logFile 2>&1 
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 40


echo "===========================================================================" >> $logFile
echo "(08-00) ipmitool lan print" >> $logFile
echo "sudo ipmitool lan print" >> $logFile
echo "===========================================================================" >> $logFile
sudo ipmitool lan print >> $logFile 2>&1 
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 41


echo "===========================================================================" >> $logFile
echo "(08-01) ipmitool -I open chassis status" >> $logFile
echo "sudo ipmitool -I open chassis status" >> $logFile
echo "===========================================================================" >> $logFile
sudo ipmitool -I open chassis status >> $logFile 2>&1 
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 42


echo "===========================================================================" >> $logFile
echo "(08-02) Management Controller 정보 확인 (IPMI firmware 정보, 제조사 등)" >> $logFile
echo "sudo ipmitool -I open mc info" >> $logFile
echo "===========================================================================" >> $logFile
sudo ipmitool -I open mc info >> $logFile 2>&1 
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 44


echo "===========================================================================" >> $logFile
echo "(08-03) iManagement Controller Channel 정보 확인" >> $logFile
echo "sudo ipmitool -I open channel info 1" >> $logFile
echo "===========================================================================" >> $logFile
sudo ipmitool -I open channel info 1 >> $logFile 2>&1 
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 45


echo "===========================================================================" >> $logFile
echo "(08-04) ipmitool" >> $logFile
echo "sudo ipmitool sdr" >> $logFile
echo "===========================================================================" >> $logFile
sudo ipmitool sdr >> $logFile 2>&1 
echo >> $logFile
echo >> $logFile
echo >> $logFile
sleep 2
prog 48


echo "===========================================================================" >> $logFile
echo "(08-05) ipmitool sensor 정보를 더 자세히 확인(HDD fault 등)" >> $logFile
echo "sudo ipmitool sdr elist" >> $logFile
echo "===========================================================================" >> $logFile
sudo ipmitool sdr elist >> $logFile 2>&1 
echo >> $logFile
echo >> $logFile
echo >> $logFile
sleep 2
prog 49


echo "===========================================================================" >> $logFile
echo "(08-06) ipmitool sensor 정보를 더 자세히 확인(HDD fault 등)" >> $logFile
echo "sudo ipmitool sdr -v" >> $logFile
echo "===========================================================================" >> $logFile
sudo ipmitool sdr -v >> $logFile 2>&1 
echo >> $logFile
echo >> $logFile
echo >> $logFile
sleep 2
prog 50


echo "===========================================================================" >> $logFile
echo "(08-07) ipmitool sensor" >> $logFile
echo "sudo ipmitool sensor" >> $logFile
echo "===========================================================================" >> $logFile
sudo ipmitool sensor >> $logFile 2>&1 
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 51


echo "===========================================================================" >> $logFile
echo "(08-08) ipmitool -I open fru" >> $logFile
echo "sudo ipmitool -I open fru" >> $logFile
echo "===========================================================================" >> $logFile
sudo ipmitool -I open fru >> $logFile 2>&1 
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 53



echo "===========================================================================" >> $logFile
echo "(08-09) ipmitool -I open sel list" >> $logFile
echo "sudo ipmitool -I open sel list" >> $logFile
echo "===========================================================================" >> $logFile
sudo ipmitool -I open sel list >> $logFile 2>&1 
echo >> $logFile
echo >> $logFile
echo >> $logFile
sleep 5
prog 55

echo "===========================================================================" >> $logFile
echo "(08-10) ipmitool -I open lan print" >> $logFile
echo "sudo ipmitool -I open lan print" >> $logFile
echo "===========================================================================" >> $logFile
sudo ipmitool -I open lan print >> $logFile 2>&1 
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 56


echo "===========================================================================" >> $logFile
echo "(08-11) ipmitool -I open chassis policy list" >> $logFile
echo "sudo ipmitool -I open chassis policy list" >> $logFile
echo "===========================================================================" >> $logFile
sudo ipmitool -I open chassis policy list >> $logFile 2>&1 
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 57


echo "===========================================================================" >> $logFile
echo "(08-12) SOL(Serial-over-LAN), 콘솔화면을 보기위한 설정 정보를 확인 (인증 허용 여부, Serial BPS 등)" >> $logFile
echo "sudo ipmitool -I open sol info 1" >> $logFile
echo "===========================================================================" >> $logFile
sudo ipmitool -I open sol info 1 >> $logFile 2>&1 
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 59


echo "===========================================================================" >> $logFile
echo "(08-13) ipmitool -I open chassis bootparam get 5" >> $logFile
echo "sudo ipmitool -I open chassis bootparam get 5" >> $logFile
echo "===========================================================================" >> $logFile
sudo ipmitool -I open chassis bootparam get 5 >> $logFile 2>&1 
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 60


echo "===========================================================================" >> $logFile
echo "(08-14) ipmitool -I open dcmi discover" >> $logFile
echo "sudo ipmitool -I open dcmi discover" >> $logFile
echo "===========================================================================" >> $logFile
sudo ipmitool -I open dcmi discover >> $logFile 2>&1 
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 62


echo "===========================================================================" >> $logFile
echo "(09-01) lspci" >> $logFile
echo "sudo lspci" >> $logFile
echo "===========================================================================" >> $logFile
sudo lspci >> $logFile 2>&1 
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 64


echo "===========================================================================" >> $logFile
echo "(09-02) lspci -vvv" >> $logFile
echo "sudo lspci -vvv" >> $logFile
echo "===========================================================================" >> $logFile
sudo lspci -vvv >> $logFile 2>&1 
sleep 1
echo >> $logFile
echo >> $logFile
echo >> $logFile
sleep 5
prog 65



echo "===========================================================================" >> $logFile
echo "(09-03) dmidecode" >> $logFile
echo "sudo dmidecode" >> $logFile
echo "===========================================================================" >> $logFile
sudo dmidecode >> $logFile 2>&1 
echo >> $logFile
echo >> $logFile
echo >> $logFile
sleep 5
prog 67



echo "===========================================================================" >> $logFile
echo "(09-04) lshw" >> $logFile
echo "sudo lshw" >> $logFile
echo "===========================================================================" >> $logFile
sudo lshw >> $logFile 2>&1 
sleep 5
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 80



echo "===========================================================================" >> $logFile
echo "(10-01) dmesg" >> $logFile
echo "sudo dmesg" >> $logFile
echo "===========================================================================" >> $logFile
sudo dmesg >> $logFile 2>&1 
echo >> $logFile
echo >> $logFile
echo >> $logFile
sleep 5
prog 90


echo "===========================================================================" >> $logFile
echo "(10-02) cat anaconda-ks.cfg" >> $logFile
echo "sudo cat anaconda-ks.cfg" >> $logFile
echo "===========================================================================" >> $logFile
sudo cat anaconda-ks.cfg >> $logFile 2>&1 
echo >> $logFile
echo >> $logFile
echo >> $logFile
prog 100


echo "===========================================================================" >> $logFile
echo "EOF" >> $logFile
echo "===========================================================================" >> $logFile
echo "===========================================================================" >> $logFile
echo " `date` " >> $logFile
echo "===========================================================================" >> $logFile

sleep 2
echo -e "\nFinish...."
sleep 2
echo -e "\nPlease refer to ${logFile} file for detail."

