FROM gitpod/workspace-full:latest

USER root

# Install custom tools, runtime, etc.
RUN apt-get update \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

WORKDIR = myworkarea

RUN  mkdir myjer \
     && touch  myjer/mytext.txt \

# Give back control
#USER root
