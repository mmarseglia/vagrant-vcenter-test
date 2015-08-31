# -*- mode: ruby -*-
# vi: set ft=ruby :
ENV['VAGRANT_DEFAULT_PROVIDER'] = 'vcenter'

# Multi-machine blueprint
nodes = []

[*1..5].each do |n|
  nodes << {
    hostname: "centos#{n}",
    box: 'packer-centos-6-6-vmware-iso',
    mem: 512,
    cpu: 1
  }
end

Vagrant.configure(2) do |config|

  config.vm.box = 'packer-centos-6-6-vmware-iso'

  config.vm.provider :vcenter do |vcenter|
    vcenter.hostname = '172.16.32.3'
    vcenter.username = 'developer@lab.local'
    vcenter.password = 'Developer1!'
    vcenter.datacenter_name = 'Datacenter'
    vcenter.compute_name = 'New Cluster'
    vcenter.datastore_name = 'Datastore'
    vcenter.network_name = 'VM Network'
    vcenter.folder_name = 'Folder'
    vcenter.template_folder_name = 'Folder'
    vcenter.linked_clones = false
  end

  config.vm.synced_folder ".", "/vagrant", type: "rsync",
        rsync__exclude: ".git/"

  config.vm.provision "shell", path: "provision/install.sh"
  config.vm.provision "shell", path: "provision/app.sh"
end
