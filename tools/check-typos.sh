#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

TYPOS_VERSION=v1.16.0

if [[ -v CI ]] ; then
    if [[ $OSTYPE == darwin* ]] ; then
        echo "CI mode for Mac OS has not been implemented!"
        exit 1
    fi
    curl --disable --silent --show-error --location "https://github.com/crate-ci/typos/releases/download/${TYPOS_VERSION}/typos-${TYPOS_VERSION}-x86_64-unknown-linux-musl.tar.gz" | tar xzf - ./typos
    curl --disable --silent --show-error --location https://github.com/halkeye/typos-json-to-checkstyle/releases/download/v0.1.1/typos-checkstyle-v0.1.1-x86_64 > typos-checkstyle
    chmod +x typos-checkstyle
    ./typos --format json | ./typos-checkstyle - > checkstyle.xml || true
    exit
fi

if [[ $OSTYPE == darwin* ]] ; then
    curl --disable --silent --show-error --location "https://github.com/crate-ci/typos/releases/download/${TYPOS_VERSION}/typos-${TYPOS_VERSION}-x86_64-apple-darwin.tar.gz" | tar xzf - ./typos
else
    curl --disable --silent --show-error --location "https://github.com/crate-ci/typos/releases/download/${TYPOS_VERSION}/typos-${TYPOS_VERSION}-x86_64-unknown-linux-musl.tar.gz" | tar xzf - ./typos
fi
./typos
