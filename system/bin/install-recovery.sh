#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:19838252:0db3f6b2307f6185dcbb6edfcf01dc3c7fe6c1de; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:12698920:d2ddf697da25a4e9f5ad0ed9ff635185c183e898 EMMC:/dev/block/bootdevice/by-name/recovery 0db3f6b2307f6185dcbb6edfcf01dc3c7fe6c1de 19838252 d2ddf697da25a4e9f5ad0ed9ff635185c183e898:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
