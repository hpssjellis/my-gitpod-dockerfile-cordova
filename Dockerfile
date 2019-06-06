FROM gitpod/workspace-full:latest

USER root

# Install custom tools, runtime, etc.
RUN apt-get update \
    && apt-get install -y default-jdk \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*




 
 
# ./tools/bin/sdkmanager --list 

# ./tools/bin/sdkmanager --list 

 #./tools/bin/sdkmanager "platforms;android-28" "build-tools;28.0.3" done

# ./tools/bin/sdkmanager --update


# premade in tasks before
#mkdir android


#USER gitpod

#RUN java -version >> logs.txt \
#&& javac -version >> logs.txt  \
#&& pwd >> logs.txt  \
#&& ls -la >> logs.txt 



#wget https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip 
#\
  #  && unzip sdk-tools-linux-4333796.zip -d android \
  #  && rm sdk-tools-linux-4333796.zip \
  #  && ./android/tools/bin/sdkmanager --list 






#ENV PATH="/usr/lib/postgresql/10/bin:$PATH"
#RUN mkdir -p ~/pg/data; mkdir -p ~/pg/scripts; mkdir -p ~/pg/logs; mkdir -p ~/pg/sockets; initdb -D pg/data/
#RUN echo '#!/bin/bash\n\
#pg_ctl -D ~/pg/data/ -l ~/pg/logs/log -o "-k ~/pg/sockets" start' > ~/pg/scripts/pg_start.sh
#RUN echo '#!/bin/bash\n\
#pg_ctl -D ~/pg/data/ -l ~/pg/logs/log -o "-k ~/pg/sockets" stop' > ~/pg/scripts/pg_stop.sh
#RUN chmod +x ~/pg/scripts/*
#ENV PATH="$HOME/pg/scripts:$PATH" 
 



# Give back control
USER root
