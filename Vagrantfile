# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "larryli/vivid64"

  config.vm.provision "ansible" do |ansible|
    #ansible.playbook = "site.yml"
    #ansible.playbook = "docker-registry.yml"
    #ansible.playbook = "jenkins.yml"
    ansible.playbook = "simple-file-server.yml"
    ansible.groups = {
      "docker-registry" => ["default"],
      "jenkins" => ["default"],
      "simple-file-server" => ["default"],
    }
  end
end
