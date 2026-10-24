PRODUCT_VERSION_MAJOR = 17
PRODUCT_VERSION_MINOR = 0

DESCARTES_VERSION := 1.0

# Internal version
LINEAGE_VERSION := DescartesOS-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(shell date +%Y%m%d)-$(LINEAGE_BUILD)-v$(DESCARTES_VERSION)

# Display version
LINEAGE_DISPLAY_VERSION := v$(DESCARTES_VERSION)-$(shell date +%Y%m%d)

# DescartesOS version properties
PRODUCT_PRODUCT_PROPERTIES += \
    ro.crdroid.build.version=$(DESCARTES_VERSION) \
    ro.crdroid.display.version=$(LINEAGE_DISPLAY_VERSION) \
    ro.crdroid.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)
