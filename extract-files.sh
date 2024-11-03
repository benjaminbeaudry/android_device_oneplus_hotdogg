#!/bin/bash
#
# SPDX-FileCopyrightText: 2016 The CyanogenMod Project
# SPDX-FileCopyrightText: 2017-2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

export DEVICE=hotdogg
export DEVICE_COMMON=sm8150-common
export VENDOR=oneplus
export VENDOR_COMMON=${VENDOR}

function blob_fixup() {
    case "${1}" in
        vendor/lib/libgf_ud_hal.so|vendor/lib64/libgf_ud_hal.so)
            sed -i "s|vendor.boot.verifiedbootstate|vendor.boot.fingerprintbstate|g" "${2}"
            ;;
    esac
}

"./../../${VENDOR_COMMON}/${DEVICE_COMMON}/extract-files.sh" "$@"
