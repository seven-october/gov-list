#!/bin/bash
set -e

echo "Deleteing site"
rm -rf .site 2>/dev/null

echo "Creating site"
mkdir -p .site/data
cp -r assets .site
csvtojson data/hebrew.csv > .site/data/hebrew.json
cp -r src/* .site