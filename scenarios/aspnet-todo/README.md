## Running aspnet-todo
**aspnet vNext MVC 6 + angularJS + mongoDB**.
This scenario will:

1. create a mongoDB container
2. create a aspnet MVC 6 Web API
3. create a angularJS static HTML
2. run nginx-proxy for hosting `aspnet-todo-demo-api.com` and `aspnet-todo-demo-web.com`

### Setup

- ```cd aspnet-todo```

- **Vagrant Locally**
```
hipops exec -plugin ansible -private-key ~/.vagrant.d/insecure_private_key -playbook-path /PATH/TO/hipops-playbooks/ansible
```
After the orchestration has ran, set your hosts files for the configured Hosts entries in the `config.json`.
```
172.17.8.101 aspnet-todo-demo-api.com
172.17.8.101 aspnet-todo-demo-web.com
```
Visit http://aspnet-todo-demo-web.com for your todo app demo.

- **Using hipops-ansible docker container locally**
```
docker run -v <path-to-here>:/home/app -v <git-key-file>:/home/git.key -v <ssh-private-key-file>:/home/vagrant.key -e GIT_KEY=/home/git.key -e PRIVATE_KEY=/home/vagrant.key -d aminjam/hipops-ansible
```

- **AWS Remotely** Checkout `hosts/local` file for the proper `App-Role` metadata instance tag.
```
hipops exec -plugin ansible -private-key /PATH/TO/AWS.pem -playbook-path /PATH/TO/hipops-playbooks/ansible -inventory /PATH/TO/EC2.py
```
