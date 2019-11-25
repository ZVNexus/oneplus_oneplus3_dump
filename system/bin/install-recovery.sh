#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:29852972:8c5dc03125d0c1fb2e32cd4a7a45eb4b01b8714d; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:17245480:53770376af1a6c7b7fb4f5680474f2a29b1a7139 EMMC:/dev/block/bootdevice/by-name/recovery 8c5dc03125d0c1fb2e32cd4a7a45eb4b01b8714d 29852972 53770376af1a6c7b7fb4f5680474f2a29b1a7139:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
