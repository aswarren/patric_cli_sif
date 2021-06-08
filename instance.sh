#!/usr/bin/env bash

INSTANCE=${1:-TEST}
SINGULARITY=${SINGULARITY:-"$(which singularity)"}

OVERLAY="${INSTANCE}/overlay"
POSTGRESQL="${INSTANCE}/postgresql"
VAR="${INSTANCE}/var"
FILES="${INSTANCE}/files"

sudo "${SINGULARITY}" instance start --bind "${POSTGRESQL}":/labkey/postgresql,"${VAR}":/labkey/var,"${FILES}":/labkey/labkey/files --overlay "$(pwd)/${OVERLAY}/" iSentry_LabKey "${INSTANCE}"
