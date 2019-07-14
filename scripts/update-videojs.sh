#!/bin/bash

export OLD_VERSION=7.4.1
export NEW_VERSION=7.6.0

# check if language files exist
# wget --delete-after https://vjs.zencdn.net/$NEW_VERSION/lang/nl.js

# update videojs in examples and documentation
if [ "$(uname)" == "Darwin" ]; then
    find . -type f -name '*.html' -exec sed -i '' s/$OLD_VERSION/$NEW_VERSION/ {} +
else
    find examples/ -type f -name '*.html' -exec sed -i "s/$OLD_VERSION/$NEW_VERSION/" {} \;
fi

#git commit -am "bump videojs to $NEW_VERSION in examples"

echo "Ready."

