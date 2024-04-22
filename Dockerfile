FROM ubuntu:latest

RUN apt-get update && apt-get install -y wget

RUN mkdir /coreapp

RUN wget -P /coreapp https://github.com/tspmy838/xcbminer/blob/main/coreapp/coreminer
RUN wget -P /coreapp https://github.com/tspmy838/xcbminer/blob/main/coreapp/mine.sh

WORKDIR /coreapp

CMD ["bash", "./mine.sh"]
