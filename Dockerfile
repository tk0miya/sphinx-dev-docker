FROM ubuntu:trusty
MAINTAINER i.tkomiya@gmail.com

ENV TERM xterm
RUN echo "deb http://ppa.launchpad.net/fkrull/deadsnakes/ubuntu trusty main" > /etc/apt/sources.list.d/deadsnakes.list \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys DB82666C

RUN apt-get update \
  && apt-get upgrade -y \
  && apt-get install -y \
       build-essential \
       git \
       graphviz \
       make \
       lmodern \
       python2.7 \
       python2.7-dev \
       python3.3 \
       python3.3-dev \
       python3.4 \
       python3.4-dev \
       python3.5 \
       python3.5-dev \
       python3.6 \
       python3.6-dev \
       texlive-latex-recommended \
       texlive-latex-extra \
       texlive-fonts-recommended \
       texlive-fonts-extra \
       texlive-luatex \
       texlive-xetex \
  && apt-get autoremove \
  && apt-get clean

ADD https://bootstrap.pypa.io/get-pip.py /root/get-pip.py
RUN python2.7 /root/get-pip.py \
  && python3.3 /root/get-pip.py \
  && python3.4 /root/get-pip.py \
  && python3.5 /root/get-pip.py \
  && python3.6 /root/get-pip.py
