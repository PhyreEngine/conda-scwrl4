This repository contains a [conda][conda] recipe for installing
[SCWRL4][scwrl], a tool for reconstructing protein side-chains.

## Prerequisites

1. You will need an installation of [conda][miniconda].

2. Your root conda installation must have the `conda-build` installed.

3. You will need the SCWRL4 installer, `install_Scwrl4_Linux`. This can be
   downloaded from the [Dunbrack Lab][scwrl] website. You will need a
   licence. Place the installer in the same directory as `meta.yaml`.

## Building

You will need to set the `$CONDA_SOURCES` environment variable to a path
containing the SCWRL4 installer. You will also need to set
the `$SCWRL_USER` environment variable to the name of the SCWRL licence holder.

You can then build this package by running `./build`.

If you are using the provided `Jenkinsfile` to build the package, you will need
to set the `conda-sources` and `scwrl-user` credentials, which in turn set the
`$CONDA_SOURCES` and `$SCWRL_USER` environment variables.

[conda]: https://conda.io
[scwrl]: http://dunbrack.fccc.edu/scwrl4/
[miniconda]: https://conda.io/miniconda.html
