#!/bin/sh -e

sed -i "s/env-at-runtime/${CURRENT_ENV:?}/g" /usr/share/nginx/html/index.html
echo "Success :: Set env and perform replacements"
