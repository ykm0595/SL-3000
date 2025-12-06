define Device/siluo_sl3000
  DEVICE_VENDOR := Siluo
  DEVICE_MODEL := SL3000
  DEVICE_DTS := mt7981-siluo-sl3000
  DEVICE_DTS_DIR := $(DTS_DIR)/mediatek

  DEVICE_PACKAGES := \
    kmod-mt7981-firmware \
    kmod-mt76 kmod-mt76-connac kmod-mt76-mt7981e \
    block-mount kmod-fs-ext4 \
    resize2fs fdisk lsblk

  IMAGES := sysupgrade.bin
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += siluo_sl3000
