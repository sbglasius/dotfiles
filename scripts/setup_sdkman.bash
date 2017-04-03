#!/usr/bin/env bash

source ~/.bashrc

echo "Setting up sdkman..."

yes | sdk install grails
yes | sdk install grails 2.5.0
yes | sdk install groovy
yes | sdk install gradle
yes | sdk install maven


# HUSK: https://github.com/sdkman/sdkman-extensions