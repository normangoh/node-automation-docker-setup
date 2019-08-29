# FROM varnish:6.2
FROM ernestojpg/varnish

# COPY default.vcl /etc/varnish/

EXPOSE 8081

# Install vmod-cfg.
RUN set -eux; \
    \
    fetchDeps=" \
    ca-certificates \
    libcurl4-openssl-dev \
    libluajit-5.1-dev \
    wget \
    git \
    vim \
    "; \
    buildDeps=" \
    build-essential \
    python-docutils \
    libvarnishapi-dev \
    automake \
    pkg-config \
    libtool \
    python3 \
    "; \
    apt-get update; \
    apt-get install -y --no-install-recommends $fetchDeps $buildDeps; \
    # rm -rf /var/lib/apt/lists/*; \
    # \
    # cd /usr/local/src/; \
    # wget -O libcurl.tar.gz "https://curl.haxx.se/download/curl-7.65.3.tar.gz"; \
    # mkdir /usr/local/src/libcurl; \
    # tar -zxf /usr/local/src/libcurl.tar.gz -C /usr/local/src/libcurl --strip-components=1; \
    # cd /usr/local/src/libcurl; \
    # \
    # ./configure; \
    # make install; \
    # \
    # cd /usr/local/src/; \
    # wget -O luajit.tar.gz "http://luajit.org/download/LuaJIT-2.0.5.tar.gz"; \
    # mkdir /usr/local/src/luajit; \
    # tar -zxf /usr/local/src/luajit.tar.gz -C /usr/local/src/luajit --strip-components=1; \
    # cd /usr/local/src/luajit; \
    # \
    # make; \
    # make install; \
    # \
    # cd /usr/local/src/; \
    # wget -O jemalloc.tar.gz "https://github.com/jemalloc/jemalloc/archive/5.2.1.tar.gz"; \
    # mkdir /usr/local/src/jemalloc; \
    # tar -zxf /usr/local/src/jemalloc.tar.gz -C /usr/local/src/jemalloc --strip-components=1; \
    # cd /usr/local/src/jemalloc; \
    # \
    # ./autogen.sh; \
    # ./configure; \
    # make install; \
    # \
    # cd /usr/local/src/; \
    # wget -O vmod-cfg.tar.gz "https://github.com/carlosabalde/libvmod-cfg/archive/6.2-7.3.tar.gz"; \
    # mkdir /usr/local/src/vmod-cfg; \
    # tar -zxf /usr/local/src/vmod-cfg.tar.gz -C /usr/local/src/vmod-cfg --strip-components=1; \
    # cd /usr/local/src/vmod-cfg; \
    # \
    # ./autogen.sh; \
    # ./configure; \
    # make install; \
    # \
    # cd /; \
    # rm -rf /usr/local/src/libcurl.tar.gz; \
    # rm -rf /usr/local/src/libcurl; \
    # rm -rf /usr/local/src/luajit.tar.gz; \
    # rm -rf /usr/local/src/luajit; \
    # rm -rf /usr/local/src/jemalloc.tar.gz; \
    # rm -rf /usr/local/src/jemalloc; \
    # rm -rf /usr/local/src/vmod-cfg.tar.gz; \
    # rm -rf /usr/local/src/vmod-cfg; \
    # \
    # apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps $buildDeps