mposjs
======

A node.js porting of [MPOS](https://github.com/TheSerapher/php-mpos) developed on top of a NoSQL database.

------
### Requirements

An Ubuntu based distro (_at least 12.04LTS version is needed_) with git module installed.
If this module is missing, test it typing **git** in your terminal, please install it via apt-get:

`sudo apt-get install git`

If you are starting from scratch I'd suggest you to use an [Ubuntu Mininal CD Installation](https://help.ubuntu.com/community/Installation/MinimalCD) of **Ubuntu 12.04 Precise Pagolin**.


-----
### Installation

Clone github repo on your server hdd:

`git clone https://github.com/matteocrippa/mposjs.git`

Then enter the directory created:

`cd mposjs`

And start the requirements script I developed.

`sudo install-reqs`

It installs in a quick manner all the requirements needed to start up your sistem:

- Node.js;
- Nginx with already working host on port 80;
- CouchDB;
- Nodejs modules;

Then you can start installing litecoind

`sudo install-litecoind`

-----
### Tips

- Instead of OpenSSH server, give a try to **Dropbear** (apt-get install dropbear);
- Setup a firewall (close all ports except for 80, 3333) give a try to ufw in order to achieve this quickly;
