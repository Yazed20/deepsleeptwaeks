#!/system/bin/sh

# Apply your changes to build.prop
echo "" >> /system/build.prop
echo "# Power_saving" >> /system/build.prop
echo "ro.ril.disable.power.collapse=0" >> /system/build.prop
echo "pm.sleep_mode=1" >> /system/build.prop
echo "ro.config.hw_power_saving=true" >> /system/build.prop
echo "ro.ril.sensor.sleep.control=1" >> /system/build.prop
echo "wifi.supplicant_scan_interval=300" >> /system/build.prop
echo "debug.kill_allocating_task=0" >> /system/build.prop
