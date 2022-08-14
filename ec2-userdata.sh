#!/bin/bash
mkdir /tmp/work
rm -rf /tmp/*.logs
cd /tmp/work/
git clone https://github.com/yanivomc/elkstack-docker.git 2>&1 || true
date >> /tmp/elkstack.logs
pwd >> /tmp/elkstack.logs
cd /tmp/work/elkstack-docker
git pull >> /tmp/git.logs
pwd >> /tmp/elkstack.logs
docker-compose up --build >> /tmp/docker.logs
docker-compose logs -f >> /tmp/elkstack.logs
