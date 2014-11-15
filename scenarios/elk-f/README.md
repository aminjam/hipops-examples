## Running elk-f
**elasticsearch + logstash + kabana + logstash-forwarder for aggregating the logs across all containers (ubuntu)**.
This scenario will:

1. create a single server hosting elasticsearch + logstash + kabana
2. add logstash-forwarder to the rest of the cluster for log forwarding aggregation

### Setup

- ```cd elk-f```

- **Vagrant Locally**
```
LOGSTASH_HOST=172.20.21.13:9921 hipops exec -plugin ansible -private-key ~/.vagrant.d/insecure_private_key -playbook-path /PATH/TO/hipops-playbooks/ansible
```
After the orchestration has ran, set your hosts files for the configured Hosts entries in the `config.json`.
```
172.20.21.13 hipops-elkf.com
```
Visit http://hipops-elkf.com/index.html#/dashboard/file/logstash.json for your kabana-logstash dashboard for all of your boxes in the cluster

- **AWS Remotely** Checkout `hosts/local` file for the proper `App-Role` metadata instance tag, and also ensure PORT 9921 is accessible by the forwarders security group.
```
LOGSTASH_HOST=IP.ADDR.OF.LOGSTASH:9921 hipops exec -plugin ansible -private-key /PATH/TO/AWS.pem -playbook-path /PATH/TO/hipops-playbooks/ansible -inventory /PATH/TO/EC2.py
```
