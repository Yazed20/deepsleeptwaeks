#!/system/bin/sh
MODDIR=${0%/*}

# Execute script by tytydraco and his project ktweak, thanks! 
write() {
	# Bail out if file does not exist
	[[ ! -f "$1" ]] && return 1
	
	# Make file writable in case it is not already
	chmod +w "$1" 2> /dev/null

	# Write the new value and bail if there's an error
	if ! echo "$2" > "$1" 2> /dev/null
	then
		echo "Failed: $1 → $2"
		return 1
	fi
}

sleep 60

####################################
# Tweaking Android (thx to Melody Script https://github.com/ionuttbara/melody_android)
####################################
su -c "cmd settings put global activity_starts_logging_enabled 0"
su -c "cmd settings put global ble_scan_always_enabled 0"
su -c "cmd settings put global hotword_detection_enabled 0"
su -c "cmd settings put global mobile_data_always_on 0"
su -c "cmd settings put global network_recommendations_enabled 0"
su -c "cmd settings put global wifi_scan_always_enabled 0"
su -c "cmd settings put secure adaptive_sleep 0"
su -c "cmd settings put secure screensaver_activate_on_dock 0"
su -c "cmd settings put secure screensaver_activate_on_sleep 0" 
su -c "cmd settings put secure screensaver_enabled 0"
su -c "cmd settings put secure send_action_app_error 0"
su -c "cmd settings put system air_motion_engine 0"
su -c "cmd settings put system air_motion_wake_up 0"
su -c "cmd settings put system intelligent_sleep_mode 0"
su -c "cmd settings put system master_motion 0"
su -c "cmd settings put system motion_engine 0"
su -c "cmd settings put system nearby_scanning_enabled 0"
su -c "cmd settings put system nearby_scanning_permission_allowed 0"
su -c "cmd settings put system rakuten_denwa 0"
su -c "cmd settings put system send_security_reports 0"
su -c "cmd settings put global cached_apps_freezer disabled"
su -c "cmd settings put global sem_enhanced_cpu_responsiveness 0"
su -c "cmd settings put global enhanced_processing 0"
su -c "cmd settings put global app_standby_enabled 0"
su -c "cmd settings put global adaptive_battery_management_enabled 0"
su -c "cmd settings put global app_restriction_enabled true"
su -c "cmd settings put system intelligent_sleep_mode 0"
su -c "cmd settings put secure adaptive_sleep 0"
su -c "cmd settings put global automatic_power_save_mode 0"
su -c "cmd settings put global low_power 0"
su -c "cmd settings put global dynamic_power_savings_enabled 0"
su -c "cmd settings put global dynamic_power_savings_disable_threshold 20"
su -c "cmd settings put system master_motion 0"
su -c "cmd settings put system motion_engine 0"
su -c "cmd settings put system air_motion_engine 0"
su -c "cmd settings put system air_motion_wake_up 0"
su -c "cmd settings put system intelligent_sleep_mode 0"
su -c "cmd settings put secure adaptive_sleep 0"
su -c "cmd settings put secure.wake_locks_enabled 0"
su -c "cmd settings put secure.location_scanning_interval 1800000"
su -c "cmd settings put global.wifi_sleep_policy 2"
# Adjust Animation Scales 
su -c "cmd settings put global.window_animation_scale 0.85"
su -c "cmd settings put global.transition_animation_scale 0.85"
su -c "cmd settings put global.animator_duration_scale 0.85"
# Enable Aggressive Doze (requires compatible kernel)
su -c "cmd settings put secure.doze_always_on 1"
# Implement Alarms Optimization (requires compatible kernel)
su -c "cmd settings put secure.alarm_manager_constants 1"

####################################
# Services
####################################
su -c "stop logcat logcatd logd tcpdump cnss_diag statsd traced idd-logreader idd-logreadermain stats dumpstate aplogd tcpdump vendor.tcpdump vendor_tcpdump vendor.cnss_diag"

####################################
# Wi-Fi Logs (thx to @LeanHijosdesusMadres)
####################################
rm -rf /data/vendor/wlan_logs
touch /data/vendor/wlan_logs
chmod 000 /data/vendor/wlan_logs

####################################
# Useless Services 
####################################
su -c "pm disable com.google.android.gms/.chimera.GmsIntentOperationService"
su -c "pm disable com.google.android.gms/com.google.android.gms.mdm.receivers.MdmDeviceAdminReceiver"

####################################
# System Log
####################################
su -c "pm uninstall --user 0 com.android.traceur"


####################################
# CRC
####################################
for parameters in /sys/module/mmc_core/parameters/*; do
    echo '0' > "$parameters/crc"
    echo '0' > "$parameters/removable"
done

####################################
# Printk (thx to KNTD-reborn)
####################################
echo '0' > "/sys/kernel/printk_mode/printk_mode"
echo '0' > "/sys/module/printk/parameters/cpu"
echo '0' > "/sys/module/printk/parameters/pid"
echo '0' > "/sys/module/printk/parameters/printk_ratelimit"
echo '0' > "/sys/module/printk/parameters/time"
echo '1' > "/sys/module/printk/parameters/console_suspend"
echo '1' > "/sys/module/printk/parameters/ignore_loglevel"

####################################
# Ramdumps
####################################
for parameters in /sys/module/subsystem_restart/parameters; do
    echo '0' > "$parameters/enable_mini_ramdumps"
    echo '0' > "$parameters/enable_ramdumps"
done

####################################
# File System
####################################
for fs in /proc/sys/fs; do
    echo '0' > "$fs/by-name/userdata/iostat_enable"
    echo '0' > "$fs/dir-notify-enable"
done

####################################
# Touchboost
####################################
echo '0' > "/sys/module/msm_perfmon/parameters/touch_boost_enable"
echo '0' > "/sys/module/msm_perfmon/parameters/touch_boost_freq"
echo '0' > "/sys/module/msm_performance/parameters/touchboost"
echo '0' > "/sys/power/pnpmgr/touch_boost"

exit 0