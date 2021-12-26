# Bootstrap Hashistack for any cloud or on-prem
This is not yet fully functional! The intent is to be able to bootstrap a Hashistack with a secure, production-ready setup on any cloud or on-prem with a minimum of operator intervention.

Hashistack is made up of:
* [Consul](https://www.consul.io) (service discovery, service mesh)
* Nomad (scheduling)
* Vault (secrets management)

Additionally, we intend to add:
* Prometheus, for metrics and monitoring
* Loki-stack, for log aggregation
* Tempo, for tracing
* Grafana for visibility of observability
* Envoy, for ingress into Nomad, where public services are required.

## Pre-requisites/dependencies
* [Consul](https://www.consul.io)
* Ansible
* Assumes hosts are running Debian/Ubuntu
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



