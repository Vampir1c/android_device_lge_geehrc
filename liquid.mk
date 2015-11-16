# Inherit some common liquid stuff.
$(call inherit-product, vendor/liquid/config/common_phone.mk)
$(call inherit-product, vendor/liquid/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/geehrc/geehrc.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := geehrc
PRODUCT_NAME := liquid_geehrc
PRODUCT_BRAND := lge
PRODUCT_MODEL :=LG Optimus G
PRODUCT_MANUFACTURER := LGE
PRODUCT_HW_CPU := Snapdragon S4 Pro
PRODUCT_HW_GPU := Adreno 320

PRODUCT_BUILD_PROP_OVERRIDES += \
	USER=ChiKaLiO \
	PRODUCT_NAME=geehrc_open_eu \
	BUILD_FINGERPRINT=lge/geehrc_open_eu/geehrc:4.4.2/KOT49I.E97520a/E97520a.1403273885:user/release-keys \
	PRIVATE_BUILD_DESC="geehrc_open_eu-user 4.4.2 KOT49I.E97520a E97520a.1403273885 release-keys"
	
# Enable Torch
PRODUCT_PACKAGES += Torch
