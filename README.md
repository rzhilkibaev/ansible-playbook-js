# ansible-playbook-js
## Files required:
- `jdk-7u79-linux-x64.tar.gz` (java-oracle)
- `jdk-8u45-linux-x64.tar.gz` (java-oracle)
- `jenkins-1.615.war` (jenkins)
- `keystore' (jenkins) optional
- `apache-ant-1.9.4-bin.tar.gz` (ant)
- `ant-contrib-1.0b3.jar` (ant)
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
  - port: `8081`
  - volume: `/sonatype-work`

## Conventions
- software not managed by apt-get is installed into /opt (except for Jenkins since it uses multiple directories).
