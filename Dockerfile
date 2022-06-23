FROM lscr.io/linuxserver/duplicati:latest

MAINTAINER Jhon Guerrero "jhon.guerrero.o@gmail.com"

USER root

### Envrionment config
ENV HOME=/root   
WORKDIR $HOME


RUN apt-get update && apt-get -y install \
    cron python3-pip

RUN apt-get -y install secure-delete
RUN yes | pip3 install b2==1.0.0
RUN yes | pip3 install b2sdk
RUN apt-get -y install rclone

ADD ./src/copy.sh /root/copy.sh
RUN chmod +x /root/*.sh
ADD ./src/start.sh /start.sh
RUN chmod +x /start.sh




