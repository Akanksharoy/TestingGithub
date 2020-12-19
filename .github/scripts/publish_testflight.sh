#!/bin/bash

set -eo pipefail

xcrun altool --upload-app -t ios -f build/Testing.ipa -u "$APPLEID_USERNAME" -p "$APPLEID_PASSWORD" --verbose