FROM alpine

RUN set -x \
    && apk add \
        htop busybox-extras apache2-utils \
        nano vim \
        zip unzip tar \
        openssh-client rsync \
        make socat bash

CMD [ "bash" ]

WORKDIR /root

COPY ./.bashrc ./

COPY ./examples .
