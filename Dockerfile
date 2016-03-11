FROM centos:7
MAINTAINER ambling <ambling07@gmail.com>

ENV HOME /root
RUN mkdir /build
ADD . /build

# install necessary packages
RUN mv /etc/yum.repos.d /etc/yum.repos.d.bk
RUN mv /build/yum.repos.d /etc
RUN yum install -y emacs-nox wget supervisor openssh sudo
RUN mv /build/.emacs /root/

# cleanup
RUN rm -rf /build

CMD /bin/bash
