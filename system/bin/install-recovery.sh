#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:11348224:e103b827c01f617939a998c2accaa3144749d409; then
  applypatch EMMC:/dev/block/bootdevice/by-name/boot:10664192:7a8b4d9b933ffa833facdf52e56cdfefa50f94ae EMMC:/dev/block/bootdevice/by-name/recovery e103b827c01f617939a998c2accaa3144749d409 11348224 7a8b4d9b933ffa833facdf52e56cdfefa50f94ae:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
