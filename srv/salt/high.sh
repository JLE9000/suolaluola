sudo apt-get update
sudo apt-get -y install salt-minion
echo 'master: 167.99.197.184\nid: jere' |sudo tee /etc/salt/minion
sudo salt-call --local state.highstate --file-root srv/salt
