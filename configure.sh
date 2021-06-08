#!/usr/bin/env bash

INSTANCE=${1:-TEST}
SINGULARITY=${SINGULARITY:-"$(which singularity)"}



sudo "${SINGULARITY}" exec  patric_cli /src/configure.sh
