#!/bin/bash
set -euo pipefail

# Usage: offline/refresh.sh
#
# This script is designed to be run from inside your local copy of the 
# "github.com/dan-schel/trainquery" repo to update the content of its "offline" 
# directory to use the latest data from "github.com/dan-schel/trainquery-static"
# and the Department of Transport and Planning's GTFS data feed.

working_directory="offline"
manifest_url="https://static.trainquery.com/data.yml"
gtfs_url="https://data.ptv.vic.gov.au/downloads/gtfs.zip"

if [ "${1-}" = "run" ]; then
  echo "Clearing the $working_directory directory..."
  rm -rf $working_directory
  mkdir $working_directory

  echo "Checking manifest at \"$manifest_url\"..."
  data_url=$(curl -s $manifest_url| grep "latest:" | sed "s/  latest: \"//;s/\"//")

  echo "Downloading \"$data_url\"..."
  curl -s -o $working_directory/data.zip $data_url

  echo "Downloading \"$gtfs_url\"..."
  curl --progress-bar -o $working_directory/gtfs.zip $gtfs_url

  echo "Extracting \"$working_directory/data.zip\"..."
  unzip -q $working_directory/data.zip -d $working_directory

  echo "Cleaning up..."
  rm $working_directory/data.zip
  rm -r $working_directory-old
  rm refresh.sh

  echo "✅ Done!"
else
  cd "$(dirname "$0")/../"

  echo "Backing up the current $working_directory directory, just in case..."
  cp -r $working_directory $working_directory-old

  echo "Cloning script outside of offline directory..."
  rm refresh.sh
  cp $working_directory/refresh.sh refresh.sh

  ./refresh.sh run
fi

