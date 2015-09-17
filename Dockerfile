FROM sunyi00/centos:1.0.0

RUN yum -y install \
        libidn-devel \
        openssl-devel \
        pcre-devel \
        tar \
        zlib-devel
        libevent-devel \
        python-backports-lzma \
        python-devel \
        python-pip \
    && yum -y clean all

RUN \
  curl -OL https://skipfish.googlecode.com/files/skipfish-2.10b.tgz && \
  tar zxvf skipfish-2.10b.tgz && \
  rm -rf skipfish-2.10b.tgz && \
  mv skipfish-2.10b skipfish && \
  cd skipfish && \
  sed -i '/SHOW_SPLASH/d' src/config.h && \
  make
RUN \
  touch /skipfish/output.wl
