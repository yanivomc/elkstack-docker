#!/bin/bash
mkdir /tmp/work
cd /tmp/work/
git clone https://github.com/yanivomc/elkstack-docker.git
cd elkstack-docker
docker-compose up -d
