#!/usr/bin/env bash

SINGULARITY=${SINGULARITY:-"$(which singularity)"}

if [ ! -e xenial.simg ]; then
    sudo "${SINGULARITY}" build xenial.simg setup/xenial.def | tee xenial.simg.log
fi

if [ ! -d patric_cli ]; then
    sudo "${SINGULARITY}" build --sandbox patric_cli xenial.simg
    sudo "${SINGULARITY}" build --sandbox patric_cli setup/patric_cli.def | tee patric_cli.log 
fi

# Configure the sandbox

case $1 in
    --readonly)
        [ -e patric_cli.sif ] && rm -f patric_cli.sif
        sudo "${SINGULARITY}" build patric_cli.sif setup/patric_cli.def | tee patric_cli.sif.log
        ;;

    --writable)
        [ -e patric_cli.img ] && rm -f patric_cli.img
        sudo "${SINGULARITY}" build --writable patric_cli.img setup/patric_cli.def | tee patric_cli.img.log
        ;;

    *)
        ;;
esac
