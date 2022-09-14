# TODO
# For now, we are just going to extend from the Conanio, specifically
# conanio/gcc10:1.52.0

FROM conanio/gcc10:1.52.0

ARG GCC_VERSION

LABEL maintainer="Brendon McCool <brendonmccool@gmail.com>"

RUN apt-get -qq update \
    && apt-get -qq install -y --no-install-recommends --no-install-suggests -o=Dpkg::Use-Pty=0 \
       valgrind