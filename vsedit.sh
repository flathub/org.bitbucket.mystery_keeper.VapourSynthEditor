#!/bin/bash

VSCONF=${XDG_CONFIG_HOME}/vapoursynth/vapoursynth.conf

if [ ! -f ${VSCONF} ]; then
    mkdir ${XDG_CONFIG_HOME}/vapoursynth
    touch ${VSCONF}
    echo "UserPluginDir=/app/extensions/lib" >> ${VSCONF}
fi

exec vsedit "$@"