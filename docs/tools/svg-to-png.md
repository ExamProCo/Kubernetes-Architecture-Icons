# SVG to PNG Conversion Tool

## Install Librsvg2

[Libsvg2](https://www.freshports.org/graphics/librsvg2) is a Library for parsing and rendering SVG vector-graphic files. We use this library to convert svgs to pngs

```sh
sudo apt-get install -y librsvg2-bin
```

## Run SVG to PNG Conversion Tool

You can supply any pixel number as the first argument.
For example this will generate out all icons in 512px.
```sh
./bin/tools/svg-to-png.sh 512
```

## Where to find the icons after runnign the tool

The icons will be generated in the follow directory `icons/png/${PIXEL_SIZE}px/`

## Run in Gitpod

Gitpod is a Cloud Developer Environment (CDE) that allows you to quickly spin Visual Studio Code backed by a ephemeral container within your web-browser.

This repoistory contains a `.gitpod.yml' and it will automatically install the dependencies you need in order to run all tools for this repository.

Gitpod has a generous free tier.

You can follow this link in order to spin up a Gitpod environment for this repo:

[https://gitpod.io/#https://github.com/ExamProCo/Kubernetes-Architecture-Icons](https://github.com/ExamProCo/Kubernetes-Architecture-Icons)