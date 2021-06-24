#!/bin/sh

# Download and install Danmuji
mkdir /tmp/bili
wget -q https://github.91chifun.workers.dev/https://github.com//BanqiJane/Bilibili_Danmuji/releases/download/2.4.6/danmuji-heroku.zip -O /tmp/bili/danmuji-heroku.zip
unzip /tmp/bili/danmuji-heroku.zip -d /tmp/bili
# Run build Danmuji
cd /tmp/bili
java -Xms64m -Xmx128m -jar BiliBili_Danmuji-2.4.6beta.jar
