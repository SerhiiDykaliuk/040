#!/bin/bash
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

docker build -t mysql57 /vagrant/db
