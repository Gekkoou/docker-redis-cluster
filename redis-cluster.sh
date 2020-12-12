#!/bin/bash

/usr/local/bin/redis-cli -a admin --cluster-replicas 1 --cluster create 172.18.1.11:6381 172.18.1.12:6382 172.18.1.13:6383 172.18.1.14:6384 172.18.1.15:6385 172.18.1.16:6386