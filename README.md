[![Build Status](https://travis-ci.org/open-io/ansible-role-openio-elasticsearch.svg?branch=master)](https://travis-ci.org/open-io/ansible-role-openio-elasticsearch)
# Ansible role `elasticsearch`

An Ansible role for elasticsearch. Specifically, the responsibilities of this role are to:

- Install
- Configure

## Requirements

- Ansible 2.4+

## Role Variables


| Variable   | Default | Comments (type)  |
| :---       | :---    | :---             |
| `openio_elasticsearch_additional_config` | `{}` | ... |
| `openio_elasticsearch_bind_address` | `"{{ hostvars[inventory_hostname]['ansible_' + openio_elasticsearch_bind_interface]['ipv4']['address'] }}"` | ... |
| `openio_elasticsearch_bind_interface` | `"{{ ansible_default_ipv4.alias }}"` | ... |
| `openio_elasticsearch_cluster_name` | `"{{ openio_elasticsearch_namespace }}-1"` | ... |
| `openio_elasticsearch_gridinit_dir` | `"/etc/gridinit.d/{{ openio_elasticsearch_namespace }}"` | ... |
| `openio_elasticsearch_gridinit_file_prefix` | `""` | ... |
| `openio_elasticsearch_http_port` | `6400` | ... |
| `openio_elasticsearch_ignore_key_error` | `false` | ... |
| `openio_elasticsearch_java_args` | `"-Xms{{ openio_elasticsearch_memory }} -Xmx{{ openio_elasticsearch_memory }} \` | ... |
| `openio_elasticsearch_max_map_count` | `262144` | ... |
| `openio_elasticsearch_memory` | `"-Xms{{ openio_elasticsearch_memory }} -Xmx{{ openio_elasticsearch_memory }} \ "4096M"` | ... |
| `openio_elasticsearch_namespace` | `"OPENIO"` | ... |
| `openio_elasticsearch_node_name` | `"{{ ansible_hostname }}"` | ... |
| `openio_elasticsearch_pid_directory` | `/run/elasticsearch/{{ openio_elasticsearch_namespace }}/elasticsearch-{{ openio_elasticsearch_serviceid }}` | ... |
| `openio_elasticsearch_provision_only` | `false` | ... |
| `openio_elasticsearch_repo` | `"6.x"` | ... |
| `openio_elasticsearch_safeguard_version` | `com.floragunn:search-guard-6:{{ openio_elasticsearch_version }}-23.2` | ... |
| `openio_elasticsearch_serviceid` | `0` | ... |
| `openio_elasticsearch_sysctl` | `` | ... |
| `openio_elasticsearch_transport_tcp_port` | `6450` | ... |
| `openio_elasticsearch_version` | `"6.4.3"` | ... |
| `openio_elasticsearch_volume` | `/var/lib/oio/sds/{{ openio_elasticsearch_namespace }}/elasticsearch-{{ openio_elasticsearch_serviceid }}` | ... |


## Dependencies

No dependencies.

## Example Playbook

```yaml
- hosts: localhost
  become: true
  vars:
    NS: OPENIO
  roles:
    - role: repo
    - role: gridinit
      openio_gridinit_namespace: "{{ NS }}"
      openio_gridinit_per_ns: true
    - role: role_under_test
      openio_elasticsearch_namespace: "{{ NS }}"
      openio_elasticsearch_bind_address: "{{ ansible_default_ipv4.address }}"
```


```ini
[all]
node1 ansible_host=192.168.1.173
```

## Contributing

Issues, feature requests, ideas are appreciated and can be posted in the Issues section.

Pull requests are also very welcome.
The best way to submit a PR is by first creating a fork of this Github project, then creating a topic branch for the suggested change and pushing that branch to your own fork.
Github can then easily create a PR based on that branch.

## License

GNU AFFERO GENERAL PUBLIC LICENSE, Version 3

## Contributors

- [Cedric DELGEHIER](https://github.com/cdelgehier) (maintainer)
