#!/bin/bash

# NAME:         pdflinkextractor
# AUTHOR:       Glutanimate (http://askubuntu.com/users/81372/) (2013), moiSentineL (2024)
# LICENSE:      GNU GPL v2
# DEPENDENCIES: wget lynx
# DESCRIPTION:  extracts PDF links from websites and dumps them to the stdout and as a textfile
#               only works for links pointing to files with the ".pdf" extension
# USAGE:        pdflinkextractor [-d] "www.website.com"


# Check for download option
DOWNLOAD=false

# Parse options
while getopts "d" opt; do
  case $opt in
    d)
      DOWNLOAD=true
      ;;
    *)
      echo "Usage: $0 [-d] <website>"
      exit 1
      ;;
  esac
done

shift $((OPTIND -1))

WEBSITE="$1"

if [ -z "$WEBSITE" ]; then
  echo "Usage: $0 [-d] <website>"
  exit 1
fi

echo "Getting link list..."

# Extract PDF links
lynx -cache=0 -dump -listonly "$WEBSITE" | grep ".*\.pdf$" | awk '{print $2}' | tee /tmp/pdflinks.txt

# Download files if -d option is provided
if [ "$DOWNLOAD" = true ]; then
  echo "Downloading..."
  wget -i /tmp/pdflinks.txt
fi

rm /tmp/pdflinks.txt


