#!/usr/bin/env bash

echo "stoping docker containers"
docker-compose down

echo "removing dir './www'"
rm -rf ./www/

echo "creating dir './www'"
mkdir "www"

echo "coping files to './www'"
cp -r ../demo/site/ ./www

echo "coping modules to './www'"
#cp -r ../demo/modules/ ./www/bitrix/modules/

echo "starting docker containers"
docker-compose up -d

echo "done"