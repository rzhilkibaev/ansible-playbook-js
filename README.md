# ansible-playbook-js
## Files required:
- `jdk-7u79-linux-x64.tar.gz` (java-oracle)
- `jdk-8u45-linux-x64.tar.gz` (java-oracle)
- `jenkins-1.613.war` (jenkins)
- `keystore' (jenkins) optional
- `apache-ant-1.9.4-bin.tar.gz` (ant)
- `ant-contrib-1.0b3.jar` (ant)
- `apache-maven-3.2.5-bin.tar.gz` (maven)

## Summary
- java-oracle
  - directory: `/opt/jdk1.7.0_79`
  - directory: `/opt/jdk1.8.0_45`
- ant
  - directory: `/opt/apache-ant-1.9.4`
- maven
  - directory: `/opt/apache-maven-3.2.5`
- docker-registry
  - port: `5000`
- jenkins
  - port: `10000`
  - version: `1.613`
- simple-file-server
  - port: `8000`
  - directory: `/opt/files`
