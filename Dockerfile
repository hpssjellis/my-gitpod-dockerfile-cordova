FROM gitpod/workspace-full:latest

USER root

RUN apt-get update \
    && apt-get install -y default-jdk \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

RUN mkdir -p /home/gitpod/rocksetta/logs                        \ 
    && mkdir -p /home/gitpod/rocksetta/android                  \ 
    && mkdir -p /home/gitpod/rocksetta/qrcode-cordova           \
    && touch /home/gitpod/rocksetta/logs/mylogs.txt             \
    && wget https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip       \
    && unzip sdk-tools-linux-4333796.zip -d /home/gitpod/rocksetta/android             \
    && rm sdk-tools-linux-4333796.zip                                                  \              
    && chmod 755 /home/gitpod/rocksetta/android/tools/bin/sdkmanager                   
 
    # && chmod 755 -R /home/gitpod/rocksetta    
 
 
 ENV ANDROID_SDK_ROOT /home/gitpod/rocksetta/android
 ENV ANDROID_HOME /home/gitpod/rocksetta/android
 ENV PATH ${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/tools/bin:${ANDROID_HOME}/platform-tools
 
 
 #RUN #!/bin/bash /usr/bin/expect -c ' set timeout -1; spawn '"${ANDROID_HOME}"'/tools/bin/sdkmanager --licenses; expect { "y/N" { exp_send "y\r" ; exp_continue } eof} '
 
 RUN #!/bin/bash /usr/bin/expect -c ' set timeout -1; spawn  sdkmanager --licenses; expect { "y/N" { exp_send "y\r" ; exp_continue } eof} '

 #RUN (echo y; echo y; echo y; echo y; echo y; echo y) | sdkmanager --licenses
 #RUN sdkmanager "platform-tools" "build-tools;28.0.3" "platforms;android-28" 
 
 
 
 
 
 
 
 
 #ENV PATH ${PATH}:/home/gitpod/rocksetta/android/tools:/home/gitpod/rocksetta/android/tools/bin:/home/gitpod/rocksetta/android/platform-tools   

#RUN for filter in tools platform-tools android-28 extra build-tools-28.0.3; do \
#        echo y | /home/gitpod/rocksetta/android/tools/bin/sdkmanager update sdk --filter $filter --no-ui --force --all; \
#    done

#RUN for filter in tools platform-tools android-28 extra build-tools-28.0.3; do \
#        echo y | /home/gitpod/rocksetta/android/tools/bin/sdkmanager update sdk --filter $filter --no-ui --force --all; \
#    done

#RUN printf 'y\ny\ny\ny\ny\n' | sdkmanager --licenses
#RUN printf 'yyyyyy' | sdkmanager --licenses

#RUN printf "y\ny\ny\ny\ny\ny\n" | sdkmanager --licenses

#RUN for i in 1 2 3 4 5 6; do  y | sdkmanager --licenses; done

#RUN yes yes yes yes yes yes | sdkmanager --licenses

#RUN sdkmanager --licenses <<< "y\ny\ny\ny\ny\ny\n"


 #y | sdkmanager --licenses \
#RUN sdkmanager --licenses <<< "y\ny\ny\ny\ny\ny\n"

#RUN sdkmanager 'platform-tools'

 #RUN  sdkmanager "platform-tools"  "platforms;android-28"   "build-tools;28.0.3" 
 
 
 #RUN echo y | sdkmanager "platform-tools";
 
 #RUN sdkmanager --no-ui --force --all "platform-tools" 

 #RUN yes | sdkmanager --licenses
 
 #RUN sdkmanager              \
 #    "platform-tools"        \
 #  "platforms;android-28"   \
 #   "build-tools;28.0.3" 


# --- Install Gradle from PPA

# Gradle PPA
RUN apt-get update \
 && apt-get -y install gradle \
 && gradle -v

RUN npm install -g cordova
 
#RUN yes | /home/gitpod/rocksetta/android/tools/bin/sdkmanager "platform-tools" "build-tools;28.0.3" "platforms;android-28"    

    
    
    
    
    #&& /home/gitpod/rocksetta/android/tools/bin/sdkmanager --list      >>  /home/gitpod/rocksetta/logs/mylogs.txt    
    
    
    #\
   # && yes | ./home/gitpod/rocksetta/android/tools/bin/sdkmanager "platform-tools" "build-tools;28.0.3" "platforms;android-28"
    
    
    
    #&& ./home/gitpod/rocksetta/android/tools/bin/sdkmanager --list      &>>  /home/gitpod/rocksetta/logs/mylogs.txt              


#RUN apt-get update \
#    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*


# Cleaning
RUN apt-get clean

# Give back control
#USER root
