#!/usr/bin/env bash

curl "https://download.elastic.co/logstash/logstash/logstash-2.3.0.tar.gz" -o ~/Downloads/logstash-2.3.0.tar.gz
tar -xvzf ~/Downloads/logstash-2.3.0.tar.gz
cp  ~/Downloads/osquery-osx-conf/logstash-output-sumologic-1.0.3.gem  ~/Downloads/osquery-osx-conf/logstash-2.3.0/bin/
sudo mv ~/Downloads/osquery-osx-conf/logstash-2.3.0 /usr/local/logstash/
/usr/local/logstash/bin/logstash-plugin install /usr/local/logstash/bin/logstash-output-sumologic-1.0.3.gem
sudo cp ~/Downloads/osquery-osx-conf/logstash.conf /usr/local/logstash/logstash.conf
sudo cp ~/Downloads/osquery-osx-conf/com.elastic.logstash.plist /Library/LaunchDaemons/
sudo launchctl load /Library/LaunchDaemons/com.elastic.logstash.plist
