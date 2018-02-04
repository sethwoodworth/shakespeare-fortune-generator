#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

./generate_saturnine_fortunes.sh > saturnine.fortune
strfile saturnine.fortune
