# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    # shared configuration
    config.vm.provision "ansible" do |ansible|
        ansible.playbook = "docker.yml"
        ansible.groups = {
            "sleepless" => ["default"],
        }
    end

    case ENV["PROVIDER"]
    when "aws"
        config.vm.box = "dummy"
        config.vm.synced_folder ".", "./vagrant", disabled: true
        config.vm.provider :aws do |aws, override|
            aws.access_key_id = ENV["AWS_ACCESS_KEY_ID"]
            aws.secret_access_key = ENV["AWS_SECRET_ACCESS_KEY"]
            aws.keypair_name = ENV["AWS_KEYPAIR"]
            # vivid 20150729
            aws.ami = "ami-2b72a840"
            aws.security_groups = [ENV["AWS_SECURITY_GROUP"]]
            aws.tags = {
                'Name' => 'renat-ansible-playbook-js',
                'Owner' => 'rzhilkib',
            }

            override.ssh.username = "ubuntu"
            override.ssh.private_key_path = "/home/rz/.ssh/rzhilkib-aws-js.pem"
        end
    when "managed"
        config.vm.box = "tknerr/managed-server-dummy"
        config.vm.provider :managed do |managed|
            managed.server = "vivid"
        end
    else
        config.vm.box = "ubuntu/vivid64"
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
