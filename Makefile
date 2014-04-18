ARCHS = armv7 arm64

include theos/makefiles/common.mk

TWEAK_NAME = UnfoldPatch
UnfoldPatch_FILES = Tweak.xm
UnfoldPatch_FRAMEWORKS = UIKit Foundation

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
