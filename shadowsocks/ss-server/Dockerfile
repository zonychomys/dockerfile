FROM centos:7
MAINTAINER 245967906<245967906@qq.com>
RUN set -x \
    && yum -y install git python-setuptools m2crypto zlib-devel openssl-devel \
    && git clone -b master https://github.com/shadowsocks/shadowsocks.git \
    && cd shadowsocks/ \
    && python setup.py build \
    && python setup.py install
COPY docker-entrypoint.sh /usr/local/bin/
COPY conf/ss-server.json /etc/shadowsocks/ss-server.json
ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 8388
CMD ["ssserver", "-c", "/etc/shadowsocks/ss-server.json"]
