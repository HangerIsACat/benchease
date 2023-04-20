FROM ubuntu:20.04 

# Install dependencies 
RUN apt-get update 
RUN apt-get install -y \ 
  apt-utils \ 
  git \ 
  curl \ 
  wget 

# Clear package cache 
RUN apt-get clean 
RUN rm -rf /var/lib/apt/lists/* 

# Set working directory 
WORKDIR /home 

# Get and install JDK 11
RUN wget https://download.bell-sw.com/java/11.0.18+10/bellsoft-jdk11.0.18+10-linux-amd64.tar.gz 
RUN tar -xf bellsoft-jdk11.0.18+10-linux-amd64.tar.gz 
RUN mv jdk-11.0.18/ /usr/local/lib/jdk-11.0.18 
RUN update-alternatives --install "/usr/bin/java" "java" "/usr/local/lib/jdk-11.0.18/bin/java" 1 
RUN update-alternatives --install "/usr/bin/javac" "javac" "/usr/local/lib/jdk-11.0.18/bin/javac" 1 
RUN rm bellsoft-jdk11.0.18+10-linux-amd64.tar.gz 

# Get benchease project
RUN git clone https://github.com/HangerIsACat/benchease.git 

# Set working directory to benchease root directory 
WORKDIR /home/benchease 

RUN ./gradlew build 

EXPOSE 8080

# To run container
# docker container run --rm --detach --name benchease --publish 8080:8080 -it <docker image ID>
