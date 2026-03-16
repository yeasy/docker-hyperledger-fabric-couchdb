# Dockerfile for Hyperledger Fabric CouchDB image.
# This image follows the Fabric sample-network default CouchDB line.
#
# Latest CouchDB upstream release is currently 3.5.1, while Fabric samples
# pin 3.4.2 for tested network composition. Keep a build arg for overrides.

ARG COUCHDB_VERSION=3.4.2
FROM couchdb:${COUCHDB_VERSION}

LABEL maintainer="yeasy@github"

USER root

# Add Fabric-oriented configuration.
COPY payload/local.ini /opt/couchdb/etc/local.d/10-hyperledger-fabric.ini
COPY payload/vm.args /opt/couchdb/etc/vm.args
COPY payload/docker-entrypoint.sh /usr/local/bin/hyperledger-fabric-couchdb-entrypoint.sh

RUN chmod +x /usr/local/bin/hyperledger-fabric-couchdb-entrypoint.sh \
 && chown -R couchdb:couchdb /opt/couchdb /usr/local/bin/hyperledger-fabric-couchdb-entrypoint.sh

WORKDIR /opt/couchdb
EXPOSE 5984 4369 9100

USER couchdb

VOLUME ["/opt/couchdb/data"]

ENTRYPOINT ["/usr/local/bin/hyperledger-fabric-couchdb-entrypoint.sh"]
CMD ["couchdb"]
