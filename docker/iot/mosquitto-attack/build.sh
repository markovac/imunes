#!/bin/bash
set -e

docker build -t mosquitto/client client
docker build -t mosquitto/victim victim
docker build -t mosquitto/attacker attacker
