## Running cbs-n
**couchbase-server + nodejs app (CoreOS)**.
This scenario will:

1. create a 3-cluster couchbase server
2. populate couchbase server with `beer-sample` bucket with it's data
3. deploy nodeJS app with nginx-proxy to host the demo app at `cbnodejs-demo.com`

### Setup
- ```cd cbs-n```

- **Vagrant Locally**
```
COUCHBASE_SERVER=172.17.8.101 hipops exec -plugin ansible -private-key ~/.vagrant.d/insecure_private_key -playbook-path /PATH/TO/hipops-playbooks/ansible
```
After the orchestration has ran, set your hosts files for the configured Hosts entries in the `config.json`.
```
172.17.8.104 cbnodejs-demo.com
```
Visit http://cbnodejs-demo.com for your nodejs app demo, and you can also verify your couchbase cluster with the `cred` provided in `config.json`
```
http://172.17.8.101:8091
http://172.17.8.102:8091
http://172.17.8.103:8091
```

- **AWS Remotely** Checkout `hosts/local` file for the proper `App-Role` metadata instance tag.
```
COUCHBASE_SERVER=IP.ADDR.OF.CB-SERVER-00 hipops exec -plugin ansible -private-key /PATH/TO/AWS.pem -playbook-path /PATH/TO/hipops-playbooks/ansible -inventory /PATH/TO/EC2.py
```
