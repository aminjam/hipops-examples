hipops-examples
===============

Collection of scenario examples for [hipops](https://github.com/aminjam/hipops)

##Getting started

###Prerequisites
`go version 1.3 or newer`

####Plugins
`ansible`: `ansible version 1.7 or newer`


#### Vagrant CoreOS
Thanks [defunctzombie](https://github.com/defunctzombie/ansible-coreos-bootstrap) for Getting `ansible` running CoreOS, you can read more about that on [CoreOS Blog](https://coreos.com/blog/managing-coreos-with-ansible/)
- `cd vagrant/coreos`
- `vagrant up` this will create 4 coreOS instances
- `ansible-playbook  ansible/bootstrap.yml -i ansible/hosts`
- You can then test it by running: `ansible -i ansible/hosts all -m setup`

#### Vagrant ubuntu
   - `cd vagrant/ubuntu`
   - `vagrant up` this will create 4 ubuntu 14.04
   - `ansible-playbook ansible/bootstrap-vagrant.yml -i ansible/hosts` to install docker and give `ubuntu` user ssh permission

#### AWS Remotely
- make sure `ec2.py` is properly [configured and working](http://docs.ansible.com/intro_dynamic_inventory.html#example-aws-ec2-external-inventory-script)
- make sure `docker` is installed on the hosts and has [non-root-access](http://docs.docker.com/installation/binaries/#giving-non-root-access)


##Examples
  - [cbs-cbsg](https://github.com/aminjam/hipops-examples/tree/master/scenarios/cbs-cbsg) couchbase-server + couchbase-sync-gateway for connecting mobile apps.
  - [cbs-n](https://github.com/aminjam/hipops-examples/tree/master/scenarios/cbs-n) couchbase-server + nodejs demo app.
  - [cr-sd](https://github.com/aminjam/hipops-examples/tree/master/scenarios/cr-sd)  consul + registrator service discovery on all of your servers.
  - [elk-f](https://github.com/aminjam/hipops-examples/tree/master/scenarios/elk-f) elasticsearch + logstash + kabana + logstash-forwarder for aggregating the logs across all containers.
  - [samomy-dev](https://github.com/aminjam/hipops-examples/tree/master/scenarios/samomy-dev) sailsJS-backend + angular-frontend + mongodb + mysql on a single box.
  - [samomy-prod](https://github.com/aminjam/hipops-examples/tree/master/scenarios/samomy-prod) sailsJS-backend + angular-frontend + mongodb + mysql linked together on three different boxes.
