FROM gitpod/workspace-full:latest

USER root


#RUN /bin/bash -c 'source $HOME/.bashrc; echo $HOME'
#RUN /bin/bash -c 'mkdir fred'
RUN mkdir -p /home/gitpod/myfolder && touch /home/gitpod/myfolder/mytext.txt

#CMD mkdir -p /home/mytom

# Install custom tools, runtime, etc.
#RUN apt-get update \
#    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*




# Give back control
#USER root
