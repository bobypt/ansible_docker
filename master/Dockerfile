FROM ubuntu

RUN \
  apt-get update && \
  apt-get install -y software-properties-common && \
  apt-add-repository ppa:ansible/ansible && \
  apt-get update && \
  apt-get install -y ansible openssh-server

COPY ansible.cfg /etc/ansible/ansible.cfg

RUN mkdir /ansible
RUN mkdir -p /tmp/playbooks
RUN mkdir -p /run/sshd
WORKDIR /ansible

EXPOSE 22

CMD ["tail", "-f", "/dev/null"]