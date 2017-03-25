Hyperledger Fabric CouchDB
===
Docker images for [Hyperledger](https://www.hyperledger.org) Fabric base image.

# Supported tags and respective Dockerfile links

* [`latest` (latest/Dockerfile)](https://github.com/yeasy/docker-hyperledger-fabric-couchdb/blob/master/Dockerfile): Default to track latest code.

For more information about this image and its history, please see the relevant manifest file in the [`yeasy/docker-hyperledger-fabric-couchdb` GitHub repo](https://github.com/yeasy/docker-hyperledger-fabric-couchdb).

If you want to quickly deploy a local cluster without any configuration and vagrant, please refer to [Start hyperledger cluster using compose](https://github.com/yeasy/docker-compose-files#hyperledger).

# What is hyperledger-fabric-couchdb?
Docker image with hyperledger fabric couchdb, which will be utilized as the couchdb container.

# How to use this image?
The docker image is auto built at [https://registry.hub.docker.com/u/yeasy/hyperledger-fabric-couchdb/](https://registry.hub.docker.com/u/yeasy/hyperledger-fabric-couchdb/).

## In Dockerfile
```sh
FROM yeasy/hyperledger-fabric-couchdb:latest
```

# Which image is based on?
The image is built based on [debian](https://hub.docker.com/_/debian) jessie image.

# What has been changed?
## install dependencies
Install required  lib

## install couchdb
Install required  couchdb 2.0.

# Supported Docker versions

This image is officially supported on Docker version 1.7.0+.

Support for older versions (down to 1.0) is provided on a best-effort basis.

# Known Issues
* N/A.

# User Feedback
## Documentation
Be sure to familiarize yourself with the [repository's `README.md`](https://github.com/yeasy/docker-hyperledger-fabric-couchdb/blob/master/README.md) file before attempting a pull request.

## Issues
If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/yeasy/docker-hyperledger-fabric-couchdb/issues).

You can also reach many of the official image maintainers via the email.

## Contributing

You are invited to contribute new features, fixes, or updates, large or small; we are always thrilled to receive pull requests, and do our best to process them as fast as we can.

Before you start to code, we recommend discussing your plans through a [GitHub issue](https://github.com/yeasy/docker-hyperledger-fabric-couchdb/issues), especially for more ambitious contributions. This gives other contributors a chance to point you in the right direction, give you feedback on your design, and help you find out if someone else is working on the same thing.
