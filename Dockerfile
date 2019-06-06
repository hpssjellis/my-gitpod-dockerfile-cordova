FROM gitpod/workspace-full:latest

USER root


RUN mkdir -p /home/gitpod/myrocksetta/logs                     \ 
    && mkdir -p /home/gitpod/myrocksetta/android               \ 
    && mkdir -p /home/gitpod/myrocksetta/qrcode-cordova        \
    && touch /home/gitpod/myrocksetta/logs/mylogs.txt

#RUN apt-get update \
#    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*




# Give back control
#USER root
