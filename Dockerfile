FROM  ubuntu:12.04

RUN   echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN   apt-get update
RUN   apt-get install -y software-properties-common
RUN   apt-get update

RUN   dpkg-divert --local --rename --add /sbin/initctl && ln -s /bin/true /sbin/initctl
RUN   ln -sf /bin/true /sbin/initctl
RUN   apt-get install -y tor privoxy supervisor

Add   ./srv /srv

RUN   cp /srv/tor.conf /etc/tor/torrc
RUN   cp /srv/torsocks.conf /etc/torsocks.conf
RUN   cp /srv/torsocks.conf /etc/tor/tor-tsocks.conf
RUN   cp /srv/privoxy.conf /etc/privoxy/config


EXPOSE  9050
EXPOSE  8118

CMD   ["/usr/bin/supervisord", "-c", "/srv/supervisord.conf"]



