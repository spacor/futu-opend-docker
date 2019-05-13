FROM ubuntu:16.04

WORKDIR /FutuOpenD
COPY ./AppData.dat /FutuOpenD/AppData.dat
COPY ./FutuOpenD /FutuOpenD/FutuOpenD
COPY ./FutuOpenD.xml /FutuOpenD/FutuOpenD.xml

CMD [ "/FutuOpenD/FutuOpenD" ]