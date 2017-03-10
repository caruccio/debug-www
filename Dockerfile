FROM centos:centos7

ENV PACKAGES strace nc mariadb postgresql jq

RUN yum -y install --setopt=tsflags=nodocs epel-release && \
    yum clean all

RUN yum -y install --setopt=tsflags=nodocs mariadb postgresql && \
    yum clean all

RUN yum -y install --setopt=tsflags=nodocs strace nc jq && \
    yum clean all

COPY run.sh /

USER 1001

EXPOSE 8080

CMD ["/run.sh"]
