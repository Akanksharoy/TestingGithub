#!/bin/bash

set -eo pipefail

xcodebuild -archivePath $PWD/build/Testing.xcarchive \
            -exportOptionsPlist Testing/exportOptions.plist \
            -exportPath $PWD/build \
            -allowProvisioningUpdates \
            -exportArchive | xcpretty