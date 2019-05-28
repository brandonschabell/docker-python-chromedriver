#!/bin/bash
set -e

CHROME_VERSION=$(curl -s 'http://omahaproxy.appspot.com/all.json' | jq -r '.[] | select(.os=="linux") | .versions[] | select(.channel=="stable") | .current_version' | cut -d'.' -f1)

declare -a version_array
version_array+=("3.5")
version_array+=("3.6")
version_array+=("3.7")
version_array+=("3.8-rc")


for version in ${version_array[@]}
do
    docker pull python:${version}
    docker build --build-arg PYTHON_VERSION=${version} -t brandonschabell/python-chromedriver:${version} -t brandonschabell/python-chromedriver:python${version}-chrome$CHROME_VERSION .
    docker push brandonschabell/python-chromedriver:${version}
    docker push brandonschabell/python-chromedriver:python${version}-chrome$CHROME_VERSION
done

docker tag brandonschabell/python-chromedriver:3.7 brandonschabell/python-chromedriver
docker push brandonschabell/python-chromedriver