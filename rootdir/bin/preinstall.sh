#!/system/bin/busybox sh

echo "do preinstall job"
BUSYBOX="/system/bin/busybox"

echo "performance" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo "performance" > /sys/devices/system/cpu/cpu4/cpufreq/scaling_governor
echo "1846000" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq 
echo "1846000" > /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq 
#if [ ! -e /data/notfirstrun ]; then
#	mkdir /data/notfirstrun
#	#copy customer file to sdcard 
#	#am startservice -n elink.com/elink.com.NvRAM
#	while true
#	do
#		if [ -e /storage/sdcard0/DCIM ];then
#			if [ -e /system/extra/ ];then
#				cp -rf  /system/extra/  /storage/sdcard0/
#				#touch /storage/sdcard0/data.notfirstrun
#				break 
#			fi
#		fi
#	done
#
#	am broadcast -a android.intent.action.COPYFILE
#	#am broadcast -a android.intent.action.MEDIA_SCANNER_SCAN_DIR -d file:///sdcard/sdcard0/extra/
#	#write mac bt address to nvram
#	
#fi

