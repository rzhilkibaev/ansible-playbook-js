# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    # shared configuration
    config.vm.provision "ansible" do |ansible|
        #ansible.playbook = "site.yml"
        ansible.playbook = "docker-registry.yml"
        ansible.playbook = "packer.yml"
        #ansible.playbook = "docker.yml"
        #ansible.playbook = "nexus.yml"
        #ansible.playbook = "jenkins.yml"
        #ansible.skip_tags = "slow"
        #ansible.playbook = "simple-file-server.yml"
        #ansible.playbook = "ant.yml"
        #ansible.playbook = "maven.yml"
        #ansible.playbook = "java-oracle.yml"
        ansible.groups = {
            "docker-registry" => ["default"],
            "packer" => ["default"],
            "docker" => ["default"],
            "nexus" => ["default"],
            "jenkins" => ["default"],
            "simple-file-server" => ["default"],
            "ant" => ["default"],
            "maven" => ["default"],
            "java-oracle" => ["default"],
        }
    end

    case ENV["PROVIDER"]
    when "aws"
        puts "TODO: aws"
    when "managed"
        config.vm.box = "tknerr/managed-server-dummy"
        config.vm.provider :managed do |managed|
            managed.server = "vivid"
        end
    else
        config.vm.box = "larryli/vivid64"
        # jenkins
        config.vm.network :forwarded_port, host: 10000, guest: 10000
        # docker-registry
        config.vm.network :forwarded_port, host: 5000, guest: 5000
        # simple-file-server
        config.vm.network :forwarded_port, host: 8000, guest: 8000

        config.vm.provider "virtualbox" do |v|
            v.memory = 2048
            v.cpus = 2
        end
    end
end
