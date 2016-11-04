#!/usr/bin/env bash

sudo cp ~/Downloads/osquery-osx-conf/incident-response.conf /var/osquery/packs/
sudo cp ~/Downloads/osquery-osx-conf/vuln-management.conf /var/osquery/packs/
sudo cp ~/Downloads/osquery-osx-conf/osx-attacks.conf /var/osquery/packs/
sudo cp ~/Downloads/osquery-osx-conf/osquery.conf /var/osquery/
sudo cp ~/Downloads/osquery-osx-conf/com.facebook.osqueryd.plist /Library/LaunchDaemons/
sudo launchctl load /Library/LaunchDaemons/com.facebook.osqueryd.plist
