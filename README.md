Docker base image
====================

This base image is based on centos:latest, with emacs (no x support), epel, supervisor, openssh, sudo installed.

The base image can be used to host services that are controlled by [supervisor](http://supervisord.org/).

This is inspired by [this post](http://blog.trifork.com/2014/03/11/using-supervisor-with-docker-to-manage-processes-supporting-image-inheritance/).
