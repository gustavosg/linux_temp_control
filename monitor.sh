#!/bin/bash

COUNT=0
while [ $COUNT -lt 3 ]; do

    echo "Setting all CPUs to " "$@"

    CPUINFO_MIN_FREQ=$(cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq)

    echo $CPUINFO_MIN_FREQ

    COUNT=$(($COUNT + 1))
    echo $COUNT
    sleep 1
done
echo "End";