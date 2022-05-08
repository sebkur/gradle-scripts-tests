#!/bin/bash

for dir in test*; do
    echo "# Testing '$dir'"
    pushd . > /dev/null
    cd $dir
    ./gradlew -q clean installDist
    ./build/install/test/bin/test
    popd > /dev/null
done
