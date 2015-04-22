# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.provision "ansible" do |ansible|
    #ansible.playbook = "site.yml"
    #ansible.playbook = "docker-registry.yml"
    ansible.playbook = "jenkins.yml"
    ansible.groups = {
      "docker-registry" => ["default"],
      "jenkins" => ["default"],
    }
  end
end
