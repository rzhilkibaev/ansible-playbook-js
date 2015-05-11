# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "larryli/vivid64"

  config.vm.provision "ansible" do |ansible|
    #ansible.playbook = "site.yml"
    #ansible.playbook = "docker-registry.yml"
    ansible.playbook = "jenkins.yml"
    #ansible.playbook = "simple-file-server.yml"
    #ansible.playbook = "ant.yml"
    #ansible.playbook = "maven.yml"
    #ansible.playbook = "java-oracle.yml"
    ansible.groups = {
      "docker-registry" => ["default"],
      "jenkins" => ["default"],
      "simple-file-server" => ["default"],
      "ant" => ["default"],
      "maven" => ["default"],
      "java-oracle" => ["default"],
    }
  end
end
