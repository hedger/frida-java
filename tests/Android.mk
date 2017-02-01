LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := frida-java-tests
LOCAL_SRC_FILES := runner.c dummy.cpp
LOCAL_STATIC_LIBRARIES := frida-gumjs
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := frida-gumjs
LOCAL_SRC_FILES := build/obj/local/$(TARGET_ARCH_ABI)/libfrida-gumjs.a
LOCAL_EXPORT_C_INCLUDES := build/obj/local/$(TARGET_ARCH_ABI)
LOCAL_EXPORT_LDLIBS := -llog
include $(PREBUILT_STATIC_LIBRARY)