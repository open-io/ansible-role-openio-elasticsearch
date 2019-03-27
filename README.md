[![Build Status](https://travis-ci.org/open-io/ansible-role-openio-elasticsearch.svg?branch=master)](https://travis-ci.org/open-io/ansible-role-openio-elasticsearch)
# Ansible role `elasticsearch`

An Ansible role for elasticsearch. Specifically, the responsibilities of this role are to:

- Install
- Configure

## Requirements

- Ansible 2.4+

## Role Variables

| Name                                      | Type    | Description                             |
| ----------------------------------------- | ------- | --------------------------------------- |
| openio_elasticsearch_namespace            | string  | OpenIO namespace for Elasticsearch      |
| openio_elasticsearch_serviceid            | string  | Elasticsearch service id                |
| openio_elasticsearch_gridinit_dir         | string  | Path to gridinit directory              |
| openio_elasticsearch_gridinit_file_prefix | string  | Gridinit unit file prefix               |
| openio_elasticsearch_bind_interface       | string  | Interface to bind to                    |
| openio_elasticsearch_bind_address         | string  | IP address to listen on                 |
| openio_elasticsearch_http_port            | integer | HTTP port to listen on                  |
| openio_elasticsearch_transport_tcp_port   | integer | TCP port to listen on                   |
| openio_elasticsearch_cluster_name         | string  | ES cluster name                         |
| openio_elasticsearch_node_name            | string  | ES node name                            |
| openio_elasticsearch_volume               | string  | path to volume used to store index data |
| openio_elasticsearch_provision_only       | string  | Provision only, without restarting      |
| openio_elasticsearch_version              | string  | ES version                              |
| openio_elasticsearch_sysctl               | dict    | Sysctl options to apply                 |
| openio_elasticsearch_java_args            | string  | ES java args                            |
| openio_elasticsearch_pid_directory        | string  | Path to ES pid directory                |
| openio_elasticsearch_memory               | string  | Amount of RAM to allocate to ES JVM     |
| openio_elasticsearch_additional_config    | dict    | Additional ES config options            |
| openio_elasticseach_filebeat_lifecycle    | dict    | Lifecycle policy for filebeat index     |

## Dependencies

No dependencies.

## Example Playbook

[Example playbook](docker-tests/test.yml)


## Contributing

Issues, feature requests, ideas are appreciated and can be posted in the Issues section.

Pull requests are also very welcome.
The best way to submit a PR is by first creating a fork of this Github project, then creating a topic branch for the suggested change and pushing that branch to your own fork.
Github can then easily create a PR based on that branch.

## License

GNU AFFERO GENERAL PUBLIC LICENSE, Version 3

## Contributors

- [Cedric DELGEHIER](https://github.com/cdelgehier) (maintainer)
