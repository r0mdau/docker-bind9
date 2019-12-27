FROM debian:buster-slim
RUN set -x && \
    apt-get update && \
    apt-get install -y --no-install-recommends bind9

COPY named.conf named.conf.options /etc/bind/
ENTRYPOINT ["named", "-g"]
