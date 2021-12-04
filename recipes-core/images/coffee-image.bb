require recipes-core/images/distro-image-base.bb

# Include kernel and device-trees in rootfs
IMAGE_INSTALL:append = " kernel-image kernel-devicetree"

# Install uboot environment tools
IMAGE_INSTALL:append = " u-boot-fw-utils"

# clock synchronization
IMAGE_INSTALL:append = " chrony chronyc"

