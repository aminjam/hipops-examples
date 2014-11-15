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
   - `cd devops/vagrant/ubuntu`
   - `vagrant up` this will create 4 ubuntu 14.04
   - `ansible-playbook ansible/bootstrap-vagrant.yml -i ansible/hosts` to install docker and give `ubuntu` user ssh permission

##Examples
  - [CbsCbsg](https://github.com/aminjam/hipops-examples/tree/master/scenarios/CbsCbsg) `Cbs`couchbase-server + `Cbsg`couchbase-sync-gateway
  - [CbsN](https://github.com/aminjam/hipops-examples/tree/master/scenarios/CbsN) `Cbs`couchbase-server + `N`nodejs demo app.
  - [ELKF](https://github.com/aminjam/hipops-examples/tree/master/scenarios/ELKF) `E`elasticsearch + `L`logstash + `K`kabana + `F`logstash-forwarder for aggregating the logs across all containers.
  - [SAMOMY-dev](https://github.com/aminjam/hipops-examples/tree/master/scenarios/SAMOMY-dev) `S`sailsJS-backend + `A`angular-frontend + `MO`mongodb + `MY`mysql on a single box.
  - [SAMOMY-prod](https://github.com/aminjam/hipops-examples/tree/master/scenarios/SAMOMY-prod) `S`sailsJS-backend + `A`angular-frontend + `MO`mongodb + `MY`mysql linked together on three different boxes.
  - [SD-CR](https://github.com/aminjam/hipops/tree/master/devops/scenarios/hipops-SD-CR) (S)service (D)discovery with (C)consul + (R)registrator on all of your servers (ubuntu)




- **AWS Remotely**
  - make sure `ec2.py` is properly [configured and working](http://docs.ansible.com/intro_dynamic_inventory.html#example-aws-ec2-external-inventory-script)
  - make sure `docker` is installed on the hosts and has [non-root-access](http://docs.docker.com/installation/binaries/#giving-non-root-access)
