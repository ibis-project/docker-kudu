# **docker-impala-kudu**
___

### Description
___

Adapted from https://github.com/parrot-stream/docker-kudu.

This image runs [*Apache Kudu*](https://kudu.apache.org/).

The *latest* tag of this image is build with the Cloudera Kudu distributions.

You can pull it with:

    docker pull ibisproject/kudu

Once started you'll be able to access to the following UIs:

| **Impala Web UIs**          |**URL**                    |
|:----------------------------|:--------------------------|
| *Kudu Master*               | http://localhost:8051     |
| *Kudu Tablet Server*        | http://localhost:8050     |
