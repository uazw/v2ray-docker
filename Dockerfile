FROM ubuntu

ENV VERSION=v3.32.1
ENV DOWNLOAD_LINK=https://github.com/v2ray/v2ray-core/releases/download/v4.19.1/v2ray-linux-64.zip
ENV UNZIP_PACKAGE=v2ray-$VERSION-linux-64

RUN apt-get update &&  apt-get install -y unzip curl
RUN mkdir -p /v2ray && cd /tmp/ && curl $DOWNLOAD_LINK && curl  -L -H "Cache-Control: no-cache" -o v2ray.zip $DOWNLOAD_LINK && unzip v2ray.zip -d ./v2ray && cd ./v2ray && chmod +x v2ray && cp -R ./* /v2ray
CMD /v2ray/v2ray --config=/v2ray/runtime/config.json
