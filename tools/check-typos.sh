#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

TYPOS_VERSION=v1.34.0

if [[ $OSTYPE == darwin* ]] ; then
    curl --disable --silent --show-error --location "https://github.com/crate-ci/typos/releases/download/${TYPOS_VERSION}/typos-${TYPOS_VERSION}-x86_64-apple-darwin.tar.gz" | tar xzf - ./typos
else
    curl --disable --silent --show-error --location "https://github.com/crate-ci/typos/releases/download/${TYPOS_VERSION}/typos-${TYPOS_VERSION}-x86_64-unknown-linux-musl.tar.gz" | tar xzf - ./typos
fi
./typos
