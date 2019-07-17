FROM ubuntu:16.04

WORKDIR /FutuOpenD
COPY ./AppData.dat /FutuOpenD/AppData.dat
COPY ./FutuOpenD /FutuOpenD/FutuOpenD
COPY ./FutuOpenD.xml /FutuOpenD/FutuOpenD.xml
COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]