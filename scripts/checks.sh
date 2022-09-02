#!/bin/bash

# Telegram
tg_check=$(grep 'TG' config.sh | wc -l)
if [[ $tg_check -gt 0 ]]; then
    echo "ERROR - You Cannot Set *TG* Vars in your config.sh"
    exit 1
fi

# Do not allow curl
curl_check=$(grep 'curl ' config.sh | wc -l)
if [[ $curl_check -gt 0 ]]; then
    echo -e "Please dont use \'curl\' in config.sh".
    exit 1
fi
