# ansible-playbook-js
## Files required:
- `jdk-7u79-linux-x64.tar.gz` (java-oracle)
- `jdk-8u45-linux-x64.tar.gz` (java-oracle)
- `jenkins-1.615.war` (jenkins)
- `keystore' (jenkins) optional
- `apache-maven-3.2.5-bin.tar.gz` (maven)
- `packer_0.8.2_linux_amd64.zip` (packer)

## Installed software summary:
- java-oracle
  - directory: `/opt/jdk1.7.0_79`
  - directory: `/opt/jdk1.8.0_45`
- ant
  - directory: `/opt/apache-ant-1.9.4`
- maven
  - directory: `/opt/apache-maven-3.2.5`
- docker-registry
  - volume: `?`
  - port: `5000`
- jenkins
  - port: `10000`
  - version: `1.615`
- simple-file-server
  - port: `8000`
  - directory: `/opt/files`
- nexus
  - port: `18081`
  - volume: `/sonatype-work`

## Conventions
- software not managed by apt-get is installed into /opt (except for Jenkins since it uses multiple directories).
- use `myapp_version` and not `myapp_ver`
- use `roles/myrole/vars` for things like versions and other unlikely to be overriden variables
- user `roles/myrole/defaults` for things which almost certainly will be overriden by group variables

## Notes
- run `sudo passwd jenkins-admin` on the managed jenkins server to create a password for jenkins-admin
