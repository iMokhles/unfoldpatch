ARCHS = armv7 arm64

include theos/makefiles/common.mk

TWEAK_NAME = UnflodPatch
UnflodPatch_FILES = Tweak.xm
UnflodPatch_FRAMEWORKS = UIKit Foundation

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
