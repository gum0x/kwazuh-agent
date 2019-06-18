FROM centos:latest
USER root
COPY wazuh.repo /etc/yum.repos.d/
COPY entry.sh .
RUN rpm --import http://packages.wazuh.com/key/GPG-KEY-WAZUH && yum install -y wazuh-agent docker-clien docker-clientt
ENTRYPOINT ["./entry.sh"]
