#!/bin/bash
mkdir /tmp/work
cd /tmp/work/
git clone https://github.com/yanivomc/elkstack-docker.git 2>&1 || true
date >> /tmp/elkstack.logs
pwd >> /tmp/elkstack.logs
cd /tmp/work/elkstack-docker
pwd >> /tmp/elkstack.logs
docker-compose up -d >> /tmp/elkstack.logs
docker-compose logs -f >> /tmp/elkstack.logs
