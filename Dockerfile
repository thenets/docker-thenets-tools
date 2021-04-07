FROM alpine

RUN set -x \
    && apk add \
        htop busybox-extras apache2-utils \
        nano vim \
        zip unzip tar \
        curl wget \
        openssh-client rsync \
        make socat tcptraceroute bash util-linux

RUN set -x \
    # Add bash autocompletion
    && apk add bash-doc bash-completion

CMD [ "bash" ]

WORKDIR /root

COPY ./.bashrc ./

COPY ./examples .
