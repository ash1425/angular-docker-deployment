#!/bin/sh -e

sed -i "s/env-at-runtime/${CURRENT_ENV:?}/g" /usr/local/apache2/htdocs/index.html
echo "Success :: Performed env specific initialization, starting NgInx"
