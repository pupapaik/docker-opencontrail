FROM ubuntu:14.04.3
MAINTAINER mhenkel
ENV DEBIAN_FRONTEND noninteractive
RUN sed -i "s/archive.ubuntu.com/us.archive.ubuntu.com/g" /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 6839FE77
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys D4865D83
RUN echo "deb http://ppa.launchpad.net/mhenkel-3/opencontrail/ubuntu trusty main" >> /etc/apt/sources.list
RUN echo "deb http://ppa.launchpad.net/opencontrail/ppa/ubuntu trusty main" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y --force-yes linux-headers-`uname -r` \
     software-properties-common \
     python-iniparse \
     contrail-utils \
     python-contrail \
     contrail-lib \
     contrail-vrouter-source \
     contrail-vrouter-agent \
     contrail-vrouter-dkms \
     contrail-vrouter-utils  
#     contrail-vrouter-init
RUN add-apt-repository -y ppa:ubuntu-toolchain-r/test
RUN apt-get update
RUN apt-get install -y gcc-4.9 g++-4.9 cpp-4.9


LABEL net.juniper.contrail=vrouter
LABEL net.juniper.node=compute
RUN mkdir /rhel-vrouter
COPY rhel-vrouter/vrouter.ko /rhel-vrouter/vrouter.ko
COPY entrypoint.sh /
COPY openstack-config /
COPY vrouter-functions.sh /
#COPY consule-template /usr/bin
RUN mkdir /etc/consul-templates
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/usr/bin/contrail-vrouter-agent"]
