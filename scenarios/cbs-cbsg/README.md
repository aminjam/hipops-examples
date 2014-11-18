## Running cbs-cbgs
**couchbase-server + couchbase-sync-gateway**.
This scenario is built for [todo-lite demo](https://github.com/couchbaselabs/TodoLite-PhoneGap) and will:

1. create a couchbase-server
2. deploy sync_gateway with nginx-proxy to host the sync endpoint at `cbsync-gateway-demo.com`

### Setup

- ```cd cbs-cbsg```

- **Vagrant Locally**
```
COUCHBASE_SERVER=172.17.8.101 hipops exec -plugin ansible -private-key ~/.vagrant.d/insecure_private_key -playbook-path /PATH/TO/hipops-playbooks/ansible
```
After the orchestration has ran, set your hosts files for the configured Hosts entries in the `config.json`.
```
172.17.8.102 cbsync-gateway-demo.com
```
Visit http://cbsync-gateway-demo.com for your `sync_gateway` demo, and you can also verify your couchbase server with the `cred` provided in `config.json`
```
http://172.17.8.101:8091
```
(Extra Credit) Connect [couchbase-lite](http://developer.couchbase.com/mobile/develop/guides/couchbase-lite/index.html) to http://cbsync-gateway-demo.com for your sync gateway demo. We will use [TodoLite-PhoneGap](https://github.com/couchbaselabs/TodoLite-PhoneGap), and change `js/index.js`

    - `REMOTE_SYNC_URL` to be `cbsync-gateway-demo.com`

    - `FacebookInAppBrowser.settings.appId` with your [FacebookAppId](https://developers.facebook.com)


- **AWS Remotely** Checkout `hosts/local` file for the proper `App-Role` metadata instance tag.
```
COUCHBASE_SERVER=IP.ADDR.OF.CB-SERVER-00 hipops exec -plugin ansible -private-key /PATH/TO/AWS.pem -playbook-path /PATH/TO/hipops-playbooks/ansible -inventory /PATH/TO/EC2.py
```
