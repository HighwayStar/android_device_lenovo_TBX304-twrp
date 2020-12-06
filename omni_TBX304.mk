#
# Copyright 2019 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := TBX304

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/TBX304/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_TBX304
PRODUCT_DEVICE := TBX304
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-X304X
PRODUCT_MANUFACTURER := Lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="hq_msm8917-user 8.1.0 OPM1.171019.026 1418 release-keys" \
    TARGET_DEVICE="TB-X304X"

BUILD_FINGERPRINT := Lenovo/LenovoTB-X304L/X304L:8.1.0/OPM1.171019.026/S001017_190709_ROW:user/release-keys
