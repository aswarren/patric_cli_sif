#!/usr/bin/env bash

curl -s https://api.github.com/repos/PATRIC3/PATRIC-distribution/releases/latest \
  | grep browser_download_url \
  | grep deb \
  | cut -d '"' -f 4 \
  | wget -qi -
