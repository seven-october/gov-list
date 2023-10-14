#!/bin/bash
set -e

echo "Deleteing site"
rm -rf .site 2>/dev/null

echo "Creating site"
mkdir .site
cp -r assets .site
cp -r data .site
cp -r src/* .site