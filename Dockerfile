FROM alpine:3.6

ENV WORKER_KEY_HOME=/concourse-keys/worker

ADD bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
ADD bin/busyscript.sh /usr/local/bin/busyscript

RUN apk add --update bash \
    && mkdir -p ${WORKER_KEY_HOME} ${WEB_KEY_HOME} ${VAULT_SERVER_HOME} ${VAULT_CONCOURSE_CLIENT_HOME} \
    && chmod +x /usr/local/bin/docker-entrypoint.sh \
    && ln -s /usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh \
    # Clean caches and tmps
    && rm -rf /var/cache/apk/* \
    && rm -rf /tmp/*  \
    && rm -rf /var/log/*

VOLUME [ "${WORKER_KEY_HOME}"]

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["/usr/local/bin/busyscript"]
