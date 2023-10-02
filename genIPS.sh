#!/bin/bash

# Shodban : script for block Shodan scanners
# By : Nevuer
# Modified by: bsasealteam6

# Global variables
IPFIRE="https://wiki.ipfire.org/configuration/firewall/blockshodan"
OUTPUT="blocklist.txt"
getShodanIps() {

	/usr/bin/curl -s -X GET $IPFIRE | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}(\/[0-9]{1,2})?' | sed 's/<[^>]\+>//g' > $1	
}
getShodanIps $OUTPUT
