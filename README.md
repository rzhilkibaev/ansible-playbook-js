# ansible-playbook-js
## Files required:
- `jdk-7u79-linux-x64.tar.gz` (java-7-oracle)
- `jdk-8u45-linux-x64.tar.gz` (java-8-oracle)
- `jenkins-1.610.war` (jenkins)

## Summary
- java-7-oracle
  - directory: `/usr/lib/jvm/java-7-oracle`
- java-8-oracle
  - directory: `/usr/lib/jvm/java-8-oracle`
- docker-registry
  - port: `5000`
- jenkins
  - port: `10000`
  - version: `1.610`
- simple-file-server
  - port: `8000`
  - directory: `/opt/files`
