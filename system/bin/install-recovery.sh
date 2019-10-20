#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:19289388:4097fb82a32f1a576117b8d1c31661f94cecf65d; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:12154152:1a1269dfb25fbbead4be44757d8ec77de71e71f7 EMMC:/dev/block/bootdevice/by-name/recovery 4097fb82a32f1a576117b8d1c31661f94cecf65d 19289388 1a1269dfb25fbbead4be44757d8ec77de71e71f7:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
