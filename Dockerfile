
FROM rocker/rstudio

MAINTAINER Chia-Chi Chang <c3h3.tw@gmail.com>

RUN mkdir /demo
ADD . /demo/
RUN cd /demo && Rscript package_installer.R

ADD userconf.sh /usr/bin/userconf.sh
RUN chmod a+x /usr/bin/userconf.sh

ENV DEMOPATH /demo

