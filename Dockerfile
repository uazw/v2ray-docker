FROM ubuntu

ENV VERSION=v2.33.1
ENV DOWNLOAD_LINK=https://github.com/v2ray/v2ray-core/releases/download/$VERSION/v2ray-linux-64.zip
ENV UNZIP_PACKAGE=v2ray-$VERSION-linux-64

RUN apt-get update &&  apt-get install -y unzip curl
RUN mkdir /v2ray && mkdir /apps && cd /apps && curl $DOWNLOAD_LINK && curl  -L -H "Cache-Control: no-cache" -o v2ray.zip $DOWNLOAD_LINK && unzip v2ray.zip && cd $UNZIP_PACKAGE && chmod +x v2ray && cp v2ray /v2ray
CMD /v2ray/v2ray --config=/v2ray/runtime/config.json
