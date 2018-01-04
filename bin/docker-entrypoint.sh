#!/bin/sh
#set -x
set -e

# we need -e to replace the \n in the key, since we pass it using \n most probably
echo -e "${TSA_PRIVATE_KEY}" > ${WORKER_KEY_HOME}/worker_key
echo -e "${TSA_PUBLIC_KEY}" > ${WORKER_KEY_HOME}/tsa_host_key.pub

exec $@