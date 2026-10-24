PRODUCT_VERSION_MAJOR = 17
PRODUCT_VERSION_MINOR = 0

DESCARTES_VERSION := 1.0
DESCARTES_BUILD_TYPE ?= UNOFFICIAL
DESCARTES_MAINTAINER ?=

# Internal version
LINEAGE_VERSION := DescartesOS-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(shell date +%Y%m%d)-$(LINEAGE_BUILD)-v$(DESCARTES_VERSION)

# Display version
LINEAGE_DISPLAY_VERSION := v$(DESCARTES_VERSION)-$(shell date +%Y%m%d)

# DescartesOS version properties
PRODUCT_PRODUCT_PROPERTIES += \
    ro.crdroid.build.version=$(DESCARTES_VERSION) \
    ro.crdroid.display.version=$(LINEAGE_DISPLAY_VERSION) \
    ro.crdroid.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.descartes.version=$(DESCARTES_VERSION) \
    ro.descartes.buildtype=$(DESCARTES_BUILD_TYPE) \
    ro.descartes.device=$(LINEAGE_BUILD)

ifneq ($(DESCARTES_MAINTAINER),)
PRODUCT_PRODUCT_PROPERTIES += \
    ro.descartes.maintainer=$(DESCARTES_MAINTAINER)
endif

ifneq ($(DESCARTES_PROCESSOR),)
PRODUCT_PRODUCT_PROPERTIES += \
    ro.descartes.soc=$(DESCARTES_PROCESSOR)
endif

ifneq ($(DESCARTES_BATTERY),)
PRODUCT_PRODUCT_PROPERTIES += \
    ro.descartes.battery=$(DESCARTES_BATTERY)
endif

ifneq ($(DESCARTES_DISPLAY),)
PRODUCT_PRODUCT_PROPERTIES += \
    ro.descartes.display=$(DESCARTES_DISPLAY)
endif

ifneq ($(DESCARTES_CAMERA_REAR_INFO),)
PRODUCT_PRODUCT_PROPERTIES += \
    ro.descartes.camera.rear=$(DESCARTES_CAMERA_REAR_INFO)
endif

ifneq ($(DESCARTES_CAMERA_FRONT_INFO),)
PRODUCT_PRODUCT_PROPERTIES += \
    ro.descartes.camera.front=$(DESCARTES_CAMERA_FRONT_INFO)
endif
