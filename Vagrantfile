# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "larryli/vivid64"
  # jenkins
  config.vm.network :forwarded_port, host: 10000, guest: 10000
  # docker-registry
  config.vm.network :forwarded_port, host: 5000, guest: 5000
  # simple-file-server
  config.vm.network :forwarded_port, host: 8000, guest: 8000

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "site.yml"
    #ansible.playbook = "docker-registry.yml"
    #ansible.playbook = "jenkins.yml"
    #ansible.skip_tags = "slow"
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

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
  end
end
