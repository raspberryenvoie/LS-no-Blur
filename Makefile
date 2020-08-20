ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = LSnoBlur

LSnoBlur_FILES = Tweak.x
LSnoBlur_CFLAGS = -fobjc-arc
LSnoBlur_EXTRA_FRAMEWORKS += Cephei

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "sbreload"

SUBPROJECTS += lsnoblurprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
