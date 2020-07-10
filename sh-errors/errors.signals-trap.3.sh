#!/usr/bin/env bash
CWD=`pwd`
TMP=${TMP:-/tmp/tmpdir}

trap \
 "{ /usr/bin/rm -r "${TMP}" ; exit 255; }" \
 SIGINT SIGTERM ERR EXIT

## create tmp dir
mkdir "${TMP}"
tar xf "${1}" --directory "${TMP}"

## move to tmp and run commands
pushd "${TMP}"
for IMG in *.jpg; do
  mogrify -verbose -flip -flop "${IMG}"
done
tar --create --file "${1%.*}".tar *.jpg

## move back to origin
popd

## zip tar
bzip2 --compress $TMP/"${1%.*}".tar \
      --stdout > "${1%.*}".tbz