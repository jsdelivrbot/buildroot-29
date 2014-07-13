################################################################################
#
# ARMSNES
#
################################################################################
ARMSNES_VERSION = 0.1
ARMSNES_SITE = /home/richard/Documents/Code/ARMSNES-libretro
ARMSNES_SITE_METHOD = local
ARMSNES_LICENSE = GPLv3+
ARMSNES_TARGET = libarmsnes.so

define ARMSNES_BUILD_CMDS
	$(MAKE) CC="$(TARGET_CC)" CXX="$(TARGET_CXX)" \
		CFLAGS="$(TARGET_CFLAGS)" LD="$(TARGET_LD)" \
		TARGET="$(ARMSNES_TARGET)" -C $(@D) all
endef

define ARMSNES_INSTALL_TARGET_CMDS
	$(INSTALL) -D $(@D)/$(ARMSNES_TARGET) \
		$(TARGET_DIR)/usr/lib/libretro/$(ARMSNES_TARGET)
endef

$(eval $(generic-package))