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
    # Install kubectl
    && cd /usr/local/bin/ \
    && curl -sLO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" \
    && chmod +x /usr/local/bin/kubectl

CMD [ "bash" ]

WORKDIR /root

COPY ./.bashrc ./

COPY ./examples .
