#!/bin/bash
set -e # stop the execution of a script if any of the steps fail

# This bash script expects a single argument which is the version name
# version names would be formatted as such eg. 1.0.1
if [ -z "$1" ]; then
  echo "No version argument was supplied eg. 1.0.1"
  echo "eg ./bin/package-release 1.0.1"
  exit 1
fi

VERSION=$1

# Create a temporary build folder to store archives
mkdir -p build

echo "SVG — Package"
zip -j -r "build/k8s-icons-${VERSION}-svg.zip" icons/svg

echo "PNG 64px — Generate and Package"
./bin/svg-to-png.sh 64
zip -j -r "build/k8s-icons-${VERSION}-png-64px.zip" icons/png/64px

echo "PNG 128px — Generate and Package"
./bin/svg-to-png.sh 128
zip -j -r "build/k8s-icons-${VERSION}-png-128px.zip" icons/png/128px

echo "PNG 256px — Generate and Package"
./bin/svg-to-png.sh 256
zip -j -r "build/k8s-icons-${VERSION}-png-256px.zip" icons/png/256px

echo "PNG 512px — Generate and Package"
./bin/svg-to-png.sh 512
zip -j -r "build/k8s-icons-${VERSION}-png-512px.zip" icons/png/512px