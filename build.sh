#!/bin/bash

MACHINE=
DISTRO=
IMAGE="${1:-rpb-console-image}"

cd "$MACHINE"

source setup-environment build

bitbake "$IMAGE" || exit 1
bitbake "$IMAGE" -c populate_sdk
