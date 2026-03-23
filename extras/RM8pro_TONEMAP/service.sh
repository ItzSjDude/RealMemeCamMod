#!/system/bin/sh

mkdir -p /odm/etc/camera/pf 2>/dev/null
rm -rf /odm/etc/camera/pf/PerfectColorSet 2>/dev/null
ln -s /vendor/etc/camera/pf/PerfectColorSet /odm/etc/camera/pf/PerfectColorSet 2>/dev/null
