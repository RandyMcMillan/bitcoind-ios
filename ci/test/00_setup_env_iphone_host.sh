#!/usr/bin/env bash
#
# Copyright (c) 2019 The Bitcoin Core developers
# Distributed under the MIT software license, see the accompanying
# file COPYING or http://www.opensource.org/licenses/mit-license.php.

export LC_ALL=C.UTF-8

export HOST=aarch64-apple-darwin19
export BREW_PACKAGES="berkeley-db4 libtool miniupnpc zeromq"
export HOMEBREW_NO_INSTALL_CLEANUP=1
export PIP_PACKAGES="zmq"
export RUN_CI_ON_HOST=true
export RUN_UNIT_TESTS=true
export RUN_FUNCTIONAL_TESTS=false
export GOAL="install"
export BITCOIN_CONFIG="--disable-wallet --disable-bench --disable-gui-tests --disable-man --enable-werror --with-gui=no"
# Run without depends
export NO_DEPENDS=1

export IOS_MIN_VERSION=13.2
export IOS_SDK_VERSION=13.2
#IOS_SDK=$(IOS_SDK_PATH)/iPhoneOS$(IOS_SDK_VERSION).sdk
export IOS_SDK
NATIVE_IOS_SDK_PATH=$(xcrun --sdk iphoneos --show-sdk-path)
export NATIVE_IOS_SDK_PATH
NATIVE_IOS_SDK_DIR=$(dirname "${NATIVE_IOS_SDK_PATH}")
export NATIVE_IOS_SDK_DIR
NATIVE_IOS_SDK_VERSION=$(xcrun --sdk iphoneos --show-sdk-version)
export NATIVE_IOS_SDK_VERSION

caffeinate -st 1500 &
