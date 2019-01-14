FROM debian:stretch-slim

RUN \
    DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get install -yq \
        apache2 \
        apache2-dev \
        apache2-utils \
        apt-utils \
        build-essential \
        cpanminus \
        dos2unix \
        libapache2-mod-fcgid \
        libapache2-mod-perl2 \
        libapache2-mod-perl2-dev \
        libapreq2-dev \
        libcgi-pm-perl \
        libexpat1-dev \
        liblocal-lib-perl \
        libssl-dev \
        libxml2-dev \
        mysql-client \
        ssl-cert \
        zip \
        zlib1g \
        zlib1g-dev \
        zlibc && \
    cpanm Carton && \
    a2enmod cgid && \
    a2enmod rewrite && \
    a2dissite 000-default && \
    apt-get -y clean