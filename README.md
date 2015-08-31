# vagrant-vcenter-test
A test project for Vagrant and VMware vCenter integration.

## Description
This is a test project using the vagrant-vsphere provider developed by Go SDDC!
and available at https://github.com/gosddc.

This will spin up a VM according to the configuration in the Vagrant
file.  It will provision the VM, install httpd, php, and install the app in
the default apache document root, /var/www/html.

## Pre-req's
* install the vagrant-vsphere provider.
* use a Vagrant box in OVF format, suitable for upload to vCenter.
  * box must have VMware tools installed (not the OSP junk)
* have access to vCenter with at least:
  * Create VM permissions
  * Create OVF permissions

## Usage
* update the Vagrant file with your vCenter config
* vagrant up
* copy/paste VM ip address into browser
* cats in space
