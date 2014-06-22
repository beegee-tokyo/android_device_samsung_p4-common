# Versions come from batch file
ROMSTAT_VER := V$(ROM_VERSION)
GOO_VER := $(ROM_MOD)

PRODUCT_PROPERTY_OVERRIDES += \
	ro.romstats.version=$(ROMSTAT_VER) \
	ro.goo.version=$(GOO_VER)
	
# BeeGee properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.google.clientidbase=android-google \
	keyguard.no_require_sim=true \
	ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
	ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
	ro.com.android.wifi-watchlist=GoogleGuest \
	ro.setupwizard.enterprise_mode=1 \
	ro.com.android.dataroaming=false \
	persist.sys.root_access=1 \
	ro.HOME_APP_ADJ=1 \
	debug.sf.hw=1 \
	windowsmgr.max_events_per_sec=240 \
	ro.telephony.call_ring.delay=0 \
	wifi.supplicant_scan_interval=180 \
	pm.sleep_mode=1 \
	ro.ril.disable.power.collapse=0 \
	mot.proximity.delay=25 \
	debug.performance.tuning=1 \
	video.accelerate.hw=1 \
	ro.media.enc.jpeg.quality=100 \
	persist.sys.purgeable_assets=1 \
	ro.tether.denied=false \
	ro.secure=0 \
	debug.performance.tuning=1 \
	ro.max.fling_velocity=12000 \
	ro.min.fling_velocity=8000 \
	dalvik.vm.dexopt-flags=m=v,o=y \
	net.tcp.buffersize.default=4096,87380,256960,4096,16384,256960 \
	net.tcp.buffersize.wifi=4096,87380,256960,4096,16384,256960 \
	net.tcp.buffersize.umts=4096,87380,256960,4096,16384,256960 \
	net.tcp.buffersize.gprs=4096,87380,256960,4096,16384,256960 \
	net.tcp.buffersize.edge=4096,87380,256960,4096,16384,256960 \
	persist.sys.usb.config=mtp,adb

ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0 \
   ro.allow.mock.location=0 \
   ro.debuggable=1 \
   ro.secure=0 \
   persist.sys.usb.config=mtp,adb

# BeeGee statistics
PRODUCT_PACKAGES += \
    romstats \
    SimpleExplorer

# trick squisher to use smaller boot animation for this device
# and get some additional usefull apks into the ROM
PRODUCT_NO_BOOTANIMATION := true
PRODUCT_COPY_FILES += \
	device/samsung/p4-common/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip \
	device/samsung/p4-common/prebuilt/app/SimpleExplorer.apk:system/app/SimpleExplorer.apk