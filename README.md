[![Build Status](https://travis-ci.org/open-io/ansible-role-openio-elasticsearch.svg?branch=master)](https://travis-ci.org/open-io/ansible-role-openio-elasticsearch)
# Ansible role `elasticsearch`

An Ansible role for install elasticsearch. Specifically, the responsibilities of this role are to:

- install and configure elasticsearch

## Requirements

- Ansible 2.9+

## Role Variables

| Variable   | Default | Comments (type)  |
| :---       | :---    | :---             |
| `openio_elasticsearch_namespace` | `"{{ namespace \| d('OPENIO') }}"` | OpenIO Namespace |
| `openio_elasticsearch_maintenance_mode` | `"{{ openio_maintenance_mode \| d(false) }}"` | Maintenance mode |
| `openio_elasticsearch_bind_address` | `"{{ openio_bind_mgmt_address \| d(ansible_default_ipv4.address) }}"` | Binding IP address |
| `openio_elasticsearch_bind_port` | `6904` | HTTP Binding port |
| `openio_elasticsearch_transport_port` | `6905` | TCP Binding port |
| `openio_elasticsearch_url` | `"http://{{ openio_elasticsearch_bind_address }}:{{ openio_elasticsearch_bind_port}}"` | URL to access elasticsearch |
| `openio_elasticsearch_nodes_group` | `"elasticsearch"` | Elasticsearch group in the inventory |
| `openio_elasticsearch_bootstrap_node` | `` | On which node to run bootstrap |
| `openio_elasticsearch_cluster_hosts` | `` | URLs of hosts in the cluster |
| `openio_elasticsearch_cluster_nodes` | `` | Hostnames of hosts in the cluster |
| `openio_elasticsearch_cluster_name` | `"{{ openio_elasticsearch_namespace }}-1"` | Name of the cluster |
| `openio_elasticsearch_node_name` | `"{{ ansible_hostname }}"` | Name of the node |
| `openio_elasticsearch_sysctl` | `` | sysctl entries |
| `openio_elasticsearch_memory` | `"1024M"` | Allocated memory |
| `openio_elasticsearch_java_args` | `` | Java options |
| `openio_elasticsearch_additional_config` | `{}` | Specific ES configuration |
| `openio_elasticseach_filebeat_lifecycle` | `` | Filebeat index lifecycle configuration |
| `openio_elasticsearch_classpath` | `` | ES classpath |
| `openio_elasticsearch_url` | `"http://{{ openio_elasticsearch_bind_address }}:{{ openio_elasticsearch_bind_port }}"` | Access URL of the ES instance |

## Dependencies
- https://github.com/open-io/ansible-role-openio-service

## Example Playbook

```yaml
- hosts: all
  gather_facts: true
  become: true

  tasks:
    - include_role:
        name: elasticsearch
```

## Contributing

Issues, feature requests, ideas are appreciated and can be posted in the Issues section.

Pull requests are also very welcome.
The best way to submit a PR is by first creating a fork of this Github project, then creating a topic branch for the suggested change and pushing that branch to your own fork.
Github can then easily create a PR based on that branch.

## License
Copyright (C) 2015-2020 OpenIO SAS
