# newrelic-sysmond [![](https://images.microbadger.com/badges/image/johanneswuerbach/newrelic-sysmond.svg)](https://microbadger.com/images/johanneswuerbach/newrelic-sysmond)

Run NewRelic server monitoring in a CoreOS fleet.

## Installation
* Replace `YOUR_NEW_RELIC_KEY` in `newrelic-sysmond.service` with your NewRelic licence key.
* Submit the monitoring agent into your fleet

```bash
fleetctl submit newrelic-sysmond.service
fleetctl start newrelic-sysmond.service
```

## Dockerfile

[![image](https://d207aa93qlcgug.cloudfront.net/img/icons/framed-icon-checked-repository.svg)](https://registry.hub.docker.com/u/johanneswuerbach/newrelic-sysmond/)

[**Trusted Build**](https://registry.hub.docker.com/u/johanneswuerbach/newrelic-sysmond/)

## NewRelic Agent

[Getting started](https://docs.newrelic.com/docs/server/new-relic-servers)  
[Release Notes](https://docs.newrelic.com/docs/releases/linux_server/)
