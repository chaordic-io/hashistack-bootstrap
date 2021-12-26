# Bootstrap Hashistack for any cloud or on-prem
This is not yet fully functional! The intent is to be able to bootstrap a Hashistack (Consul, Nomad, Vault), with a secure, production-ready setup on any cloud or on-prem with a minimum of operator intervention.

## Pre-requisites/dependencies
* Consul
* Ansible
* SSH access to hosts to install onto
* sshpass (if using password auth)

### sshpass
Installing SSH Pass:
```
./configure
make install
```

## running against local vms with password

```
consul keygen
consul tls ca create
consul tls cert create -server -dc dc1 -domain consul
```

`ansible-playbook consul/setup.yml -i consul/hosts -u parallels --ask-pass --ask-become-pass`

## TODO

- [x] Fix service startup
- [x] Auto startup of all nodes
- [ ] Enable ACL
- [ ] Automate keygen etc



