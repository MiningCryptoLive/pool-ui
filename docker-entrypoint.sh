#!/bin/sh

length=${#API_URL}
last_char=${API_URL:length-1:1}

[[ $last_char != "/" ]] && API_URL="$API_URL/"; :

sed -i "s|{{API_URL}}|${API_URL}|g" js/miningcore-ui.js
sed -i "s|{{DEFAULT_POOL}}|${DEFAULT_POOL}|g" js/miningcore-ui.js

nginx -g "daemon off;"
