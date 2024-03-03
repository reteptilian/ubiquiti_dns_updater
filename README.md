# ubiquiti_dns_updater
Scripts to switch between google and opendns name servers in a ubiquiti router config.

This can be used with cron to turn on opendns site filtering during certain times of the week.

For example:

```
# m h  dom mon dow   command
30 7 * * 1 /home/ubnt/use-opendns-nameservers.sh >> /home/ubnt/use-opendns-nameservers.output 2>&1
0 12  * * 5 /home/ubnt/use-google-nameservers.sh >> /home/ubnt/use-google-nameservers.output 2>&1
```
