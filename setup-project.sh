#!/bin/bash

HERE="$(dirname ${0})"
DEST="${PWD}"

# SOURCE="$(dirname "${BASH_SOURCE}")"
# SOURCE="$(cd "${SOURCE}";pwd)"
SOURCE="${HERE}"

# quick check if -a is in params
if grep -qw -- -a <<< "${*}"
then
    echo "INFO | COPY | SOURCE | '${SOURCE}'/secret/'"
    echo "INFO | COPY | DEST   | '${DEST}'"
    cp -r "${SOURCE}"/secret/ "${DEST}"
fi

for f in "${SOURCE}"/.git*
do
    echo "INFO | COPY | SOURCE | copying '${f}'"
    echo "INFO | COPY | DEST   | '${DEST}'"
    cp "${f}" "${DEST}"
done 