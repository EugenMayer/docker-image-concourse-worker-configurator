#!/bin/sh
#set -x
set -e

echo "${TSA_PRIVATE_KEY}" > ${WORKER_KEY_HOME}/worker_key
echo "${TSA_PUBLIC_KEY}" > ${WORKER_KEY_HOME}/tsa_host_key.pub

exec $@