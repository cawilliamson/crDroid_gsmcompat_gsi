FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive
ENV HOME /var/tmp
ENV LC_ALL C
ENV TARGET_BUILD_VARIANT user

RUN apt update && apt -y --no-install-recommends install \
  bc \
  bison \
  build-essential \
  ccache \
  curl \
  flex \
  gcc-multilib \
  git \
  gnupg \
  gperf \
  g++-multilib \
  imagemagick \
  iputils-ping \
  lib32ncurses5-dev \
  lib32z1-dev \
  libbz2-dev \
  libc6-dev-i386 \
  libffi-dev \
  libghc-bzlib-dev \
  libgl1-mesa-dev \
  libjpeg8-dev \
  liblz4-tool \
  libncurses5 \
  libssl-dev \
  libx11-dev \
  libxml2-dev \
  libxml2-utils \
  libxslt1-dev \
  lzop \
  openjdk-8-jdk \
  openssh-server \
  optipng \
  pngcrush \
  python2 \
  python3 \
  rsync \
  schedtool \
  squashfs-tools \
  unzip \
  x11proto-core-dev \
  xsltproc \
  zip \
  zlib1g-dev && rm -rf /var/lib/apt/lists/*

RUN git config --global user.email "root@localhost"
RUN git config --global user.name "Docker Container"

RUN curl https://bootstrap.pypa.io/get-pip.py | python3 && pip install networkx
RUN ln -s /usr/bin/python3 /usr/bin/python
RUN curl -L -o /usr/bin/repo http://commondatastorage.googleapis.com/git-repo-downloads/repo && chmod +x /usr/bin/repo

RUN mkdir -p /usr/src/rom
