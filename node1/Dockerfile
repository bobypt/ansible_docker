FROM ubuntu

RUN apt-get update && apt-get install openssh-server -y

RUN echo 'root:pass' | chpasswd
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

RUN mkdir /var/run/sshd

EXPOSE 22
EXPOSE 80

CMD ["/usr/sbin/sshd", "-D"]