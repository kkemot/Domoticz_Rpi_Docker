#FROM linuxserver/domoticz:stable-4.9700
FROM lsioarmhf/domoticz:stable-4.9700

RUN echo "**** install build packages ****" && \
 apk add --no-cache \
  git \
  vim && \
 echo "**** install new packages ****" && \
 apk add --no-cache \
  libffi-dev \
  openssl-dev \
  linux-headers \
  build-base \
  python3-dev && \
 echo "**** add python modules ****" && \
 pip3 install python-miio && \
 pip3 install netifaces && \
 pip3 install msgpack-python && \
 pip3 install feedparser && \
 pip3 install gevent && \
 echo "**** END ****"
