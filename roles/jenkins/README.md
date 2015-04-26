jenkins home `/var/lib/jenkins`

war directory `/usr/share/jenkins`

webroot directory `/var/cache/jenkins/war`

do `export JENKINS_HOME=...` before starting jenkins

command `/usr/bin/java -Djava.awt.headless=true -jar /usr/share/jenkins/jenkins.war --webroot=/var/cache/jenkins/war --httpPort=8080 --ajp13Port=-1`

