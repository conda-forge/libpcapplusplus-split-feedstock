#!/bin/bash

set -euxo pipefail

cmake -S . -B build
cmake --build build -- -j${CPU_COUNT}

DESTDIR=$PREFIX cmake --install build --prefix "/"
