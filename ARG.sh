#!/usr/bin/env bash

ARG=$1

cd /etc

grep --quiet $ARG= build.args*.sh || (echo "Argument $ARG is not defined in build.args*.sh!" >&2 && exit 2)

source build.args.sh
test -e build.args.override.sh && source build.args.override.sh

echo ${!ARG}
