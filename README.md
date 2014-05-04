# newrelic-sysmond (WIP)

Run NewRelic server monitoring in a CoreOS fleet.

## Installation
* Replace `YOUR_NEW_RELIC_KEY` in `newrelic-sysmond.service` with your NewRelic licence key.
* Submit the monitoring agent into your fleet

```bash
fleetctl submit newrelic-sysmond.1.service
fleetctl run newrelic-sysmond.1.service
```

* Copy and increment `.1` in the filename and `-1` in the file to run on multiple instances

## TODO
* Auto-start on all instances or allow to run multiple times without copy & paste
* Read disk space from host
* Read /proc from host (Idea: http://www.nuxeo.com/blog/development/2014/03/coreos-monitoring-diamond-graphite/)
