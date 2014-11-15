## Running SAMOMY-dev
**(S)sailsJS-backend + (A)angular-frontend + (MO)mongodb + (MY)mysql on a single host (CoreOS)**.
This scenario will create a single server hosting mysql, mongodb, nodejs api, static html, and nginx-proxy

### Setup

- ```cd scenarios/SAMOMY-dev```

- **Vagrant Locally**
```
hipops exec -plugin ansible -private-key ~/.vagrant.d/insecure_private_key -playbook-path /PATH/TO/hipops-playbooks/ansible
```
After the orchestration has ran, set your hosts files for the configured Hosts entries in the `config.json`.
```
172.17.8.101 hipops-SAMOMY-backend.com
172.17.8.101 hipops-SAMOMY-frontend.com
```
Visit http://hipops-SAMOMY-frontend.com and http://hipops-SAMOMY-backend.com/products


- **AWS Remotely** Checkout `hosts/local` file for the proper `App-Role` metadata instance tag.
```
hipops exec -plugin ansible -private-key /PATH/TO/AWS.pem -playbook-path /PATH/TO/hipops-playbooks/ansible -inventory /PATH/TO/EC2.py
```
