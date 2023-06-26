#!/usr/bin/env bash

set -e

patches_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
tree="${1}"

for project in $(cd $patches_dir/$tree; echo *); do
    p="$(tr _ / <<<$project |sed -e 's;platform/;;g')"
    [ "$p" == build ] && p=build/make
    [ "$p" == treble/app ] && p=treble_app
    [ "$p" == vendor/hardware/overlay ] && p=vendor/hardware_overlay
    pushd $p &>/dev/null
    for patch in $patches_dir/$tree/$project/*.patch; do
        git am $patch || exit
    done
    popd &>/dev/null
done
