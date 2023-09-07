#!/system/bin/sh

####################################
# yaztweaks
####################################


####################################
# Send Notification
####################################
if [ -x "$(command -v notify-send)" ]; then
    notify-send "Module Applied" "Enjoy deeeeeeep sleep :)"
fi
