FROM cooptilleuls/varnish:6.2

COPY default.vcl /etc/varnish/

EXPOSE 8081

# Install vmod-cfg.
RUN apt-get update; \
    fetchDeps="ca-certificates wget"; \
    buildDeps="$VMOD_BUILD_DEPS dpkg-dev"; \
    apt-get install -y --no-install-recommends $fetchDeps $buildDeps; \
    rm -rf /var/lib/apt/lists/*; \
    wget -O vmod-cfg.tar.gz "https://github.com/carlosabalde/libvmod-cfg/archive/6.2-7.3.tar.gz"; \
    mkdir -p /usr/local/src/vmod-cfg; \
    tar -zxf /usr/local/src/vmod-cfg.tar.gz -C /usr/local/src/vmod-cfg --strip-components=1; \
    cd /usr/local/src/vmod-cfg; \
    ./configure; \
    make install; \
    make clean; \
    cd /; \
    rm -rf /usr/local/src/vmod-cfg /usr/local/src/vmod-cfg.tar.gz; \
    apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
