FROM ubuntu:14.04
MAINTAINER Johannes Wuerbach (johannes.wuerbach@googlemail.com)

ENV NEW_RELIC_LICENSE_KEY YOUR_LICENSE_KEY
ENV CUSTOM_HOSTNAME CUSTOM_HOSTNAME

RUN apt-get update && apt-get install -yq ca-certificates wget

# generate a local to suppress warnings
RUN locale-gen en_US.UTF-8

# install new relic server monitoring
RUN echo deb http://apt.newrelic.com/debian/ newrelic non-free >> /etc/apt/sources.list.d/newrelic.list && \
  wget -O- https://download.newrelic.com/548C16BF.gpg | apt-key add - && \
  apt-get update && apt-get install newrelic-sysmond

CMD nrsysmond-config --set license_key=$NEW_RELIC_LICENSE_KEY && /usr/sbin/nrsysmond -c /etc/newrelic/nrsysmond.cfg -n $CUSTOM_HOSTNAME -l /dev/stdout -f
