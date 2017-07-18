# What you'll get?
### Vagrant virtual box environment with pre-installed:
**1. [Linux Ubuntu 16.04 Xential Xerus.](https://app.vagrantup.com/ubuntu/boxes/xenial64)**

**2. MySQL 5.7 server & client. (MySQL credentials: login:** *root*, **password:** *password* **)**

**3. NodeJS 8 & npm 5**

# Prerequisites
**1. [VirtualBox](https://www.virtualbox.org/) has to be installed**

**2. [Vagrant](https://www.vagrantup.com/) has to be installed**
# Getting started with [vagrant-starter](https://github.com/RomanPanchenko/vagrant-starter)
**1. Clone the git repository to your local folder**
```sh
$ git clone https://github.com/RomanPanchenko/vagrant-starter.git
```
**2. Go to directory with just downloaded repository**
```sh
$ cd vagrant-starter
```
**3. Create codebase directory. It is necessary because this directory will be mapped inside vagrant virtual box.**
```sh
$ mkdir codebase
```
**4. Go to directory with vagrant configuration file**
```sh
$ cd vagrant
```
**5. Create vagrant virtual box and run it**
```sh
$ vagrant up linux_vm
```
**6. Go inside vagrant virtual box**
```sh
$ vagrant ssh linux_vm
```
**7. Go to codebase directory mapped above. This is your work directory visible outside of your virtual box.**
```sh
$ cd /codebase
```
# Possible problems & solutions
**1. If virtual box creation has been failed due to network, or power, or some other issues, you can destroy current virtual box image and return to step 5. To destroy image please run:**
```sh
$ vagrant destroy linux_vm
```

# Additional notes
**1. Inner IP address of virtual box is 10.10.10.10**

**2. External folder mounted inside virtual box is 'codebase'**

**3. Vagrant configuration file** ./vagrant-starter/vagrant/Vagrantfile. **You can rename/add folder to map, change IP address or extend provision script (** install.sh **)**


### That's it!
