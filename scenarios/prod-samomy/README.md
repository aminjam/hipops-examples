## Running samomy-prod
**sailsJS-backend + angular-frontend + mongodb + mysql linked together on three different hosts (2 ubuntu & 1 CoreOS)**.
This scenario will:

1. create 3-cluster servers
2. first server with mysql and ambassador
3. second server with mongodb and ambassador
4. third server with sailsJS api and static html for frontend

### Setup

- - ```cd scenarios/samomy-prod```


- **Vagrant Locally**
```
MONGO_HOST=172.20.21.11 MYSQL_HOST=172.20.21.12 hipops exec -plugin ansible -private-key ~/.vagrant.d/insecure_private_key -playbook-path /PATH/TO/hipops-playbooks/ansible
```
After the orchestration has ran, set your hosts files for the configured Hosts entries in the `config.json`.
```
172.17.8.101 hipops-SAMOMY-backend.com
172.17.8.101 hipops-SAMOMY-frontend.com
```
Visit http://hipops-SAMOMY-frontend.com and http://hipops-SAMOMY-backend.com/products

- **AWS Remotely** Checkout `hosts/local` file for the proper `App-Role` metadata instance tag
```
MONGO_HOST=IP.ADDR.OF.MONGO MYSQL_HOST=IP.ADDR.OF.MYSQL hipops exec -plugin ansible -private-key /PATH/TO/AWS.pem -playbook-path /PATH/TO/hipops-playbooks/ansible -inventory /PATH/TO/EC2.py
```
