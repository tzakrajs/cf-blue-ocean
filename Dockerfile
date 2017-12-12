FROM jenkinsci/blueocean:latest
#ENV MESOS_VERSION 1.4.0
USER root
#RUN apk --no-cache add curl python
#RUN apk --update add --virtual build-dependencies \
#    alpine-sdk \
#    libtool \
#    make \
#    patch \
#    g++ \
#    subversion-dev \
#    zlib-dev \
#    curl-dev \
#    apr-dev \
#    linux-headers \
#    python-dev \
#    fts-dev \
#    cyrus-sasl-dev \
#    cyrus-sasl-crammd5 \
# && mkdir -p /tmp/target \
# && curl -sL http://www.apache.org/dist/mesos/$MESOS_VERSION/mesos-$MESOS_VERSION.tar.gz \
#    | gunzip \
#    | tar x -C /tmp/ \
# && cd /tmp/mesos-$MESOS_VERSION \
# && ln -s /usr/include/locale.h /usr/include/xlocale.h \
# && ./configure --disable-java --prefix /tmp/target \
# && make install -j5 \
# && rm -rf /var/cache/apk/* \
# && apk del build-dependencies
#RUN cp /tmp/target/lib/libmesos-1.4.0.so /usr/lib/libmesos-1.4.0.so
RUN apk --no-cache add python \
    subversion-libs \
    libstdc++ \
    fts \
    libcurl \
    py-pip
ENV JENKINS_SLAVE_AGENT_PORT 8001
USER jenkins
