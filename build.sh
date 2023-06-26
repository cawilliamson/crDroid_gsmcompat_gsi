#!/usr/bin/env bash

<<<<<<< HEAD
docker build -t chrisawcom/buildrom . 
=======
docker build -t chrisawcom/buildrom .
>>>>>>> 6ff9c0e (Remove unused patches and tidy up manifest)

# fetch rom sources

# docker run -it -v $(pwd):/src chrisawcom/buildrom
# mkdir -p /src/build
# cd /src/build
# repo init -u https://github.com/GrapheneOS/platform_manifest.git
# mkdir -p .repo/local_manifests
# cp -v ../manifest.xml .repo/local_manifests/
# repo sync -c --force-sync --no-clone-bundle --no-tags -j4

# apply trebledroid patches

# bash patches/apply_patches.sh trebledroid
