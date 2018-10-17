#!/bin/bash

if [ -z "${1}" ]; then 
    echo "Usage ./online.sh <server-type>"
    exit
fi

result=$(lynx --dump "https://www.online.net/en/server-dedicated/${1}"| grep -c "Victim of its success")
if [ "$result" == "0" ]
    then
	echo "@maartje @rafa Dedibox in stock! Quick https://www.online.net/en/server-dedicated/${1}" | slacktee.sh -m link_names
      exit 0  
fi
