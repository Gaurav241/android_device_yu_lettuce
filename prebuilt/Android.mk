LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := qti-telephony-common
LOCAL_MODULE_OWNER := yu
LOCAL_SRC_FILES := qti-telephony-common.jar
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := .jar
include $(BUILD_PREBUILT)
