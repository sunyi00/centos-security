FROM sunyi00/centos:1.0.0

RUN yum -y install \
        libidn-devel \
        openssl-devel \
        pcre-devel \
        tar \
        zlib-devel \
        libevent-devel \
        python-backports-lzma \
        python-devel \
        python-pip \
        gcc-c++ \
        flex \
        bison \
        gperf \
        ruby \
        freetype-devel \
        fontconfig-devel \
        libicu-devel \
        sqlite-devel \
        libpng-devel \
        libjpeg-devel \
        ttf-mscorefonts-installer \
    && yum -y clean all

RUN \
  cd / && \
  curl -OL https://skipfish.googlecode.com/files/skipfish-2.10b.tgz && \
  tar zxvf skipfish-2.10b.tgz && \
  rm -rf skipfish-2.10b.tgz && \
  mv skipfish-2.10b skipfish && \
  cd skipfish && \
  sed -i '/SHOW_SPLASH/d' src/config.h && \
  make && \
  touch /skipfish/output.wl

RUN \
  cd / && \
  curl -L https://github.com/sqlmapproject/sqlmap/tarball/master -o sqlmap.tar.gz && \
  tar zxvf sqlmap.tar.gz && \
  rm -rf sqlmap.tar.gz && \
  mv sqlmapproject-sqlmap-* sqlmap

RUN \
  cd / && \
  git clone git://github.com/ariya/phantomjs.git && \
  cd phantomjs && \
  git checkout 2.0 && \
  echo y | ./build.sh && \
  cp -f bin/phantomjs /usr/local/bin/phantomjs && \
  cd / && \
  rm -rf phantomjs
