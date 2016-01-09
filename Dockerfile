FROM ubuntu:14.04
MAINTAINER Jeremy SEBAN <jeremy@seban.eu>

COPY ./xe-guest-utilities_6.5.0-1393_amd64.deb /root/xe-guest-utilities.deb
RUN dpkg -i /root/xe-guest-utilities.deb
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["/usr/sbin/xe-daemon"]
