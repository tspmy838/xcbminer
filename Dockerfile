FROM ubuntu:latest

RUN apt-get update && apt-get install -y wget tar

RUN mkdir /coreapp

RUN wget -P /coreapp https://github.com/catchthatrabbit/coreminer/releases/download/v0.19.84/coreminer-linux-x86_64.tar.gz
RUN tar -xzvf /coreapp/coreminer-linux-x86_64.tar.gz -C /coreapp/

WORKDIR /coreapp

CMD ["bash", "./mine.sh"]
