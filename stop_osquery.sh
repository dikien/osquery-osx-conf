#!/usr/bin/env bash

sudo launchctl unload /Library/LaunchDaemons/com.facebook.osqueryd.plist
sudo rm -rf /var/osquery/
sudo rm -rf /var/log/osquery/