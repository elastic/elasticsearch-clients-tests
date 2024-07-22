#!/usr/bin/env bash
# ------------------------------------------------------- #
#
# Build entry script for elasticsearch tests
#
# Must be called: ./.github/make.sh <target> <params>
#
# Version: 1.0.0
#
# Targets:
# ---------------------------
# bumpmatrix <VERSION> : bump stack version in test matrix to version
# ------------------------------------------------------- #
script_path=$(dirname "$(realpath -s "$0")")
repo=$(realpath "$script_path/../")

# shellcheck disable=SC1090
CMD=$1
VERSION=$2
STACK_VERSION=$VERSION
set -euo pipefail

case $CMD in
    bumpmatrix)
      if [ -v $VERSION ]; then
        echo -e "\033[31;1mTARGET: bumpmatrix -> missing version parameter\033[0m"
        exit 1
      fi
      echo -e "\033[36;1mTARGET: bump stack in test matrix to version $VERSION\033[0m"
      sed -i "s/[0-9]\+\.[0-9]\+\.[0-9]\+-SNAPSHOT/$VERSION/" $repo/.github/workflows/report.yml

      ;;
    *)
        echo -e "\nUsage:"
        echo -e "\t Bump stack version:"
        echo -e "\t $0 bumpmatrix [version_qualifier]\n"
        exit 1
esac

