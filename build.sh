#!/usr/bin/env bash

docker build -t chrisawcom/buildrom . 

# fetch rom sources

# docker run -it -v $(pwd):/src chrisawcom/buildrom
# mkdir -p /src/build
# cd /src/build
# repo init -u https://github.com/GrapheneOS/platform_manifest.git -b 13
# mkdir -p .repo/local_manifests
# cp -v ../manifest.xml .repo/local_manifests/
# repo sync -c --force-sync --no-clone-bundle --no-tags -j4

# apply trebledroid patches

# bash patches/apply_patches.sh trebledroid

# build treble app

# pushd treble_app/
# bash build.sh release
# popd
# mkdir -p ../vendor/hardware_overlay/
# cp -v treble_app/TrebleApp.apk vendor/hardware_overlay/TrebleApp/app.apk

# build rom

# source script/envsetup.sh
# choosecombo release aosp_arm64 user
# make -j$(nproc --all) systemimage
