LD64_VERSION=253.9

OSX_MIN_VERSION=10.10
OSX_SDK_VERSION=10.11
OSX_SDK=$(SDK_PATH)/MacOSX$(OSX_SDK_VERSION).sdk

NATIVE_OSX_SDK_PATH=$(xcrun --sdk macosx --show-sdk-path)
NATIVE_OSX_SDK_DIR=$(dirname "${NATIVE_OSX_SDK_PATH}")
NATIVE_OSX_SDK_VERSION=$(xcrun --sdk macosx --show-sdk-version)

OSX_SDK=$(xcrun --sdk macosx --show-sdk-path)
darwin_CC=clang -target $(host) -mmacosx-version-min=$(OSX_MIN_VERSION) --sysroot $(OSX_SDK) -mlinker-version=$(LD64_VERSION)
darwin_CXX=clang++ -target $(host) -mmacosx-version-min=$(OSX_MIN_VERSION) --sysroot $(OSX_SDK) -mlinker-version=$(LD64_VERSION) -stdlib=libc++

IOS_MIN_VERSION=13.2
IOS_SDK_VERSION=13.2
IOS_SDK=$(IOS_SDK_PATH)/iPhoneOS$(IOS_SDK_VERSION).sdk

NATIVE_IOS_SDK_PATH=$(xcrun --sdk iphoneos --show-sdk-path)
NATIVE_IOS_SDK_DIR=$(dirname "${NATIVE_IOS_SDK_PATH}")
NATIVE_IOS_SDK_VERSION=$(xcrun --sdk iphoneos --show-sdk-version)

IOS_SDK=$(xcrun --sdk iphoneos --show-sdk-path)
aarch64_darwin_CC=clang -target $(host) -arch arm64 -miphoneos-version-min=$(IOS_MIN_VERSION) --sysroot $(IOS_SDK) -mlinker-version=$(LD64_VERSION)
aarch64_darwin_CXX=clang++ -target $(host) -arch arm64 -miphoneos-version-min=$(IOS_MIN_VERSION) --sysroot $(IOS_SDK) -mlinker-version=$(LD64_VERSION) -stdlib=libc++

darwin_CFLAGS=-pipe
darwin_CXXFLAGS=$(darwin_CFLAGS)

darwin_release_CFLAGS=-O2
darwin_release_CXXFLAGS=$(darwin_release_CFLAGS)

darwin_debug_CFLAGS=-O1
darwin_debug_CXXFLAGS=$(darwin_debug_CFLAGS)

darwin_native_toolchain=native_cctools
