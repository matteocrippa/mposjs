#!/bin/bash
echo 'Updating repositories to install latest node.js version'
sudo apt-get install -y python-software-properties python g++ make
sudo add-apt-repository -y ppa:chris-lea/node.js
echo 'Update local apt-get repos'
sudo apt-get update
echo 'Check for system updates'
sudo apt-get upgrade
echo 'Install requirements...'
sudo apt-get install nodejs couchdb nginx -y
echo 'Installing Node.js modules...'
npm install
echo 'Install nodemon'
sudo npm install nodemon -g
echo 'Create Nginx host on port 80'
sudo cat > /etc/nginx/sites-available/mposjs.conf << EOL
upstream app_mposjs{
				server 127.0.0.1:3000;
}

server {

				listen 80;

				access_log /var/log/mposjs_access.log;
				error_log /var/log/mposjs_error.log;

				location /{
								proxy_set_header X-Real-IP $remote_addr;
								proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
								proxy_set_header Host $http_host;
								proxy_set_header X-NginX-Proxy true;

								proxy_pass http://app_mposjs/;
								proxy_redirect off;
				}
}
EOL
ln -s /etc/nginx/sites-available/mposjs.conf /etc/nginx/sites-enabled/mposjs.conf