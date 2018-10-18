#!/usr/bin/env bash

## This script is ran during the Docker build phase to install and
## setup the environment.

## Preamble:
echo "debconf debconf/frontend select Noninteractive" | debconf-set-selections
apt-get update
apt-get install -y --no-install-recommends apt-transport-https

## Install latest official `sbt` release for Debian along with other
## Debian packages of interest:
echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
apt-get update
apt-get install -y --no-install-recommends nano vim mc sbt build-essential fakeroot devscripts

## Run `sbt` so that it performs the necessary downloads (see
## built.sbt and project/plugins.sbt for reference):
sbt sbtVersion
