#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/recovery:11071744:79fb17c40f464516eb66f007048d31773fae79f5; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/boot:7665920:6f0e9eda79753cd24c0a145cba1c98352d4bf2a0 EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/recovery 79fb17c40f464516eb66f007048d31773fae79f5 11071744 6f0e9eda79753cd24c0a145cba1c98352d4bf2a0:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
