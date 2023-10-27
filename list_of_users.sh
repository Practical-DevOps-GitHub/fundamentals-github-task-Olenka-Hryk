#!/bin/bash

echo "List of all users with /bin/bash CLI in a file /etc/passwd:"
passwd_file="/etc/passwd"
search_pattern='$7 == "/bin/bash" {print $1}'

awk -F: "$search_pattern" $passwd_file
