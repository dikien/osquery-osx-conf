#!/usr/bin/env bash

sudo launchctl unload /Library/LaunchDaemons/com.elastic.logstash.plist
sudo rm -rf /usr/local/logstash