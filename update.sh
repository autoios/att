#!/bin/sh
bzip2 -c9k ./Packages > ./Packages.bz2
gzip -c9k ./Packages > ./Packages.gz
printf "Architectures: iphoneos-arm iphoneos-arm64 iphoneos-arm64e\nCodename: autotouch-repo\nComponents: main\nDate: $(date -Ru)\nOrigin: Autoios AutoTouch\nLabel: Autoios AutoTouch\nSuite: stable\nComponents: main\nDescription: Autoios AutoTouch\nVersion: 1.0\nMD5Sum:\n "$(cat ./Packages | md5 | cut -d ' ' -f 1)" "$(stat -f%z ./Packages)" Packages\n "$(cat ./Packages.bz2 | md5 | cut -d ' ' -f 1)" "$(stat -f%z ./Packages.bz2)" Packages.bz2\n "$(cat ./Packages.gz | md5 | cut -d ' ' -f 1)" "$(stat -f%z ./Packages.gz)" Packages.gz\n" >Release;
exit 0
