#!/bin/bash
set -e

scwrl_installer="conda-scwrl4/install_Scwrl4_Linux"
if [[ ! ( -n "$CONDA_SOURCES" && -e "$CONDA_SOURCES/$scwrl_installer" ) ]]; then
    echo "Environment variable CONDA_SOURCES must be set and"\
         "\$CONDA_SOURCES/$scwrl_installer must exist."\
         "If you are building via Jenkins, set the 'conda-sources' credential."\
         >&2
    exit 1
fi

if [[ -z "$SCWRL_USER" ]]; then
    echo "Environment variable SCWRL_USER must be set for the SCWRL"\
         "licence agreement."\
         "If you are building via Jenkins, set the 'scwrl-user' credential."\
         >&2
    exit 1
fi

cp -v "$CONDA_SOURCES/$scwrl_installer" .
