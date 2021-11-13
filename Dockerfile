FROM ubuntu:16.04

RUN apt-get update \
	&& apt-get install -y wget procps 

ENV SDK_NAME=FutuOpenD_5.8.2008_Ubuntu16.04


RUN wget -O - https://softwarefile.futunn.com/${SDK_NAME}.tar.gz | tar -xzf - -C / \
	&& rm -rf /${SDK_NAME}/${SDK_NAME}.AppImage \
	&& ln -s /${SDK_NAME}/${SDK_NAME} /FutuOpenD

WORKDIR /FutuOpenD

COPY ./FutuOpenD.xml /FutuOpenD/FutuOpenD.xml
COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
