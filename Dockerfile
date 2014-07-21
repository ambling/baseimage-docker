FROM centos:centos6
MAINTAINER ambling <ambling07@gmail.com>

ENV HOME /root
RUN mkdir /build
ADD . /build

# install necessary packages
RUN rpm -Uvh /build/epel-release-6-8.noarch.rpm
RUN yum install -y emacs-nox wget supervisor openssh sudo
RUN mv /build/.emacs /root/

# cleanup
RUN rm -rf /build

CMD /bin/bash
