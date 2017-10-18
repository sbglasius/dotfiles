#!/usr/bin/env bash

source ~/.bashrc

echo "Setting up sdkman..."

yes | sdk install grails
yes | sdk install grails 2.4.5
yes | sdk install grails 2.5.0
yes | sdk install groovy
yes | sdk install gradle
yes | sdk install maven


# HUSK: https://github.com/sdkman/sdkman-extensions
git clone https://github.com/sdkman/sdkman-extensions
cd sdkman-extensions
./gradlew install
cd ..
rm -rf ./sdkman-extensions
