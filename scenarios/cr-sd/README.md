## Running cr-sd
**consul + registrator + service discovery**.
This scenario will:

1. create a 3-cluster consul servers
2. add registrator for service discovery

### Setup

- ```cd scenarios/cr-sd```

- **Vagrant Locally**
 ```
 CONSUL_SERVER=172.20.21.10 hipops exec -plugin ansible -private-key ~/.vagrant.d/insecure_private_key -playbook-path /PATH/TO/hipops-playbooks/ansible
 ```

 After the orchestration has ran, you can verify the Consul and Registrator by visiting:
 ```
 http://172.20.21.10:8500
 http://172.20.21.11:8500
 http://172.20.21.12:8500
 http://172.20.21.13:8500
 ```

- **AWS Remotely** Ensure at least 3 AWS instances. One with `SD-Role` metadata `CONSUL-SERVER-00` and the others with `CONSUL-SERVER`. Checkout `hosts/local` file for the proper `SD-Role` metadata tags.
```
CONSUL_SERVER=IP.ADDR.OF.CONSUL-SERVER-00 hipops exec -plugin ansible -private-key /PATH/TO/AWS.pem -playbook-path /PATH/TO/hipops-playbooks/ansible -inventory /PATH/TO/EC2.py
```
