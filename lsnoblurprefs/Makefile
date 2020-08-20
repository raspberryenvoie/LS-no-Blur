ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = LSnoBlurPrefs

LSnoBlurPrefs_FILES = LBPRootListController.m
LSnoBlurPrefs_FRAMEWORKS = UIKit
LSnoBlurPrefs_PRIVATE_FRAMEWORKS = Preferences
LSnoBlurPrefs_INSTALL_PATH = /Library/PreferenceBundles
LSnoBlurPrefs_CFLAGS = -fobjc-arc
LSnoBlurPrefs_EXTRA_FRAMEWORKS += Cephei CepheiPrefs

include $(THEOS_MAKE_PATH)/bundle.mk
