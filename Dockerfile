FROM ubuntu:22.04

RUN \
  apt-get update && apt-get install -y \
    curl \
    git \
    imagemagick \
    jp2a \
    jq \
  && rm -rf /var/lib/apt/lists/* \
  && git clone https://github.com/art-institute-of-chicago/aic-bash

ENV PATH ${PATH}:${PWD}/aic-bash

WORKDIR ${PWD}/aic-bash

CMD ["bash"]
