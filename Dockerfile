FROM gitpod/workspace-full:latest

USER root


RUN mkdir -p /home/gitpod/rocksetta/logs                     \ 
    && mkdir -p /home/gitpod/rocksetta/android               \ 
    && mkdir -p /home/gitpod/rocksetta/qrcode-cordova        \
    && touch /home/gitpod/rocksetta/logs/mylogs.txt          \
    && wget https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip       \
    && unzip sdk-tools-linux-4333796.zip -d /home/gitpod/rocksetta/android             \
    && rm sdk-tools-linux-4333796.zip                                                  \
    && ./home/gitpod/rocksetta/android/tools/bin/sdkmanager --list      &>>  /home/gitpod/rocksetta/logs/mylogs.txt              


#RUN apt-get update \
#    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*




# Give back control
#USER root
