# Package Release Tool

The purpose of this tool is to help generate out common icon sizes and formats into downloadable archives which are then uploaded as releases on Github.

## How to run the tool

You need to supply a version number.

```
./bin/package-release 1.0.0
```

## Where to find the archives after running the tool

The icon archives will be generated in the `build` directory eg.

```
build/
  k8s-icons-1.0.0-png64px.zip
  k8s-icons-1.0.0-png128px.zip
  k8s-icons-1.0.0-png256px.zip
  k8s-icons-1.0.0-png512px.zip
  k8s-icons-1.0.0-svg.zip
```

## Run in Gitpod

Gitpod is a Cloud Developer Environment (CDE) that allows you to quickly spin Visual Studio Code backed by a ephemeral container within your web-browser.

This repoistory contains a `.gitpod.yml' and it will automatically install the dependencies you need in order to run all tools for this repository.

Gitpod has a generous free tier.

You can follow this link in order to spin up a Gitpod environment for this repo:

[https://gitpod.io/#https://github.com/ExamProCo/Kubernetes-Architecture-Icons](https://github.com/ExamProCo/Kubernetes-Architecture-Icons)