#!/bin/bash
Manufacturer="JS Technology Inc."
Name="JG2203A-V4"
Serial="S202432100004"

ipmitool fru edit 0 field p 0 "${Manufacturer}"

sleep 2

ipmitool fru edit 0 field p 1 ${Name}

sleep 2

ipmitool fru edit 0 field p 4 ${Serial}

sleep 2

ipmitool fru print
