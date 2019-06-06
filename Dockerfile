FROM ubuntu:18.04

ARG DEFAULT_WORKDIR=/darknet
COPY ./ $DEFAULT_WORKDIR/

RUN apt-get update && apt-get install -y --no-install-recommends wget make gcc g++ libc6-dev

WORKDIR $DEFAULT_WORKDIR

RUN wget https://pjreddie.com/media/files/yolov3.weights --no-check-certificate

RUN make
