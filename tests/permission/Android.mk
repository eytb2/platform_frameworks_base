LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

# We only want this apk build for tests.
LOCAL_MODULE_TAGS := tests

# Include all test java files.
LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_JAVA_LIBRARIES := android.test.runner telephony-common
LOCAL_STATIC_JAVA_LIBRARIES := junit legacy-android-test
LOCAL_PACKAGE_NAME := FrameworkPermissionTests

include $(BUILD_PACKAGE)

