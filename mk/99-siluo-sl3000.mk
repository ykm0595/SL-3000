define Device/siluo_sl3000
  DEVICE_VENDOR := Siluo
  DEVICE_MODEL := SL3000
  DEVICE_DTS := mt7981-siluo-sl3000
  DEVICE_DTS_DIR := $(DTS_DIR)/mediatek

  # 设备特性（根据 MT7981 平台）
  DEVICE_PACKAGES := \
    kmod-mt7981-firmware \
    kmod-mt76 kmod-mt76-connac kmod-mt76-mt7981e \
    block-mount kmod-fs-ext4 kmod-fs-f2fs \
    resize2fs fdisk lsblk e2fsprogs f2fs-tools

  # 固件格式：sysupgrade.tar（ImmortalWrt 24.10 默认）
  IMAGES := sysupgrade.bin
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata

  # eMMC 设备（非常关键）
  SUPPORTED_DEVICES := siluo,sl3000
endef
TARGET_DEVICES += siluo_sl3000
