# newrelic-sysmond

Run NewRelic server monitoring in a CoreOS fleet.

## Installation
* Replace `YOUR_NEW_RELIC_KEY` in `newrelic-sysmond@.service` with your NewRelic licence key.
* Submit the monitoring agent into your fleet

```bash
fleetctl submit newrelic-sysmond@1.service
fleetctl start newrelic-sysmond@1.service
```

* Increment the number behind the @ to run multiple units
* Each unit will be schedule to a separate machine by fleet

## Dockerfile

[![image](https://d207aa93qlcgug.cloudfront.net/img/icons/framed-icon-checked-repository.svg)](https://index.docker.io/u/johanneswuerbach/newrelic-sysmond/)

[**Trusted Build**](https://index.docker.io/u/johanneswuerbach/newrelic-sysmond/)

This Docker image is based on the official [ubuntu:12.04](https://index.docker.io/_/ubuntu/) base image.

## NewRelic Agent

[Getting started](https://docs.newrelic.com/docs/server/new-relic-servers)  
[Release Notes](https://docs.newrelic.com/docs/releases/linux_server/)
