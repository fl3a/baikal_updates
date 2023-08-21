#!/usr/bin/env bash

# Check for available updates of the Baïkal CalDAV and CardDAV server
# by comparing current version with the version of the latest release from Github.
#
# https://github.com/fl3a/baikal_updates
#
# Usage: baikal_updates.sh /path/to/baikal

set -e
set -o nounset 

baikal=$1 && test -d $baikal || { echo "$baikal is no directory."; exit; }
version=$(grep 'configured_version' ${baikal}/config/baikal.yaml | tr -d ' ' | cut -d ':'  -f 2)
current_version=${version:?}
latest_version=$(curl -s https://api.github.com/repos/sabre-io/Baikal/releases/latest | jq -r '.name')

if [ "$current_version" != "$latest_version" ] ; then 
   latest_body=$(curl -s https://api.github.com/repos/sabre-io/Baikal/releases/latest | jq -r '.body')
   echo -e "Baïkal update available:" 
   echo " - Running $current_version -> $latest_version is available"
   echo -e "Release notes:\n $latest_body"
fi
