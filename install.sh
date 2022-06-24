#!/bin/bash

sudo apt update &>/dev/null && echo "List of apt packages successfully updated" || echo "The apt list package update failed. You you might receive stale packages"
sudo apt-get install openjdk-17-jre-headless &>/dev/null && echo "Java v17 has been successfully installed" || echo "Failed to install Java v17."
JAVA_VER=$(java -version 2>&1 | grep -i version | sed 's/.*version ".*\.\(.*\)\..*"/\1/; 1q')

[ "$JAVA_VER" -ge 15 ] && echo "Java v17 Successfully Configured" || echo "Failed to configure Java"
