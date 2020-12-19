#!/bin/bash

set -eo pipefail

xcodebuild -workspace Testing.xcworkspace \
            -scheme Testing
            -sdk iphoneos \
            -configuration AppStoreDistribution \
            -archivePath $PWD/build/Testing.xcarchive \
            clean archive | xcpretty