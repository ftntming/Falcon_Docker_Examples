FROM centos:centos7 AS BASEIMAGE

WORKDIR /root

COPY python2-pip-8.1.2-8.el7.noarch.rpm python2-pip-8.1.2-8.el7.noarch.rpm

RUN yum install -y createrepo ansible python2 python-setuptools 
RUN rpm -ivU python2-pip-8.1.2-8.el7.noarch.rpm
RUN pip install -U pip
RUN pip install falcon gunicorn

WORKDIR /opt

