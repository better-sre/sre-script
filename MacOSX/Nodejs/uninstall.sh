
##########################
#   uninstall nodejs
##########################




# first:
lsbom -f -l -s -pf /var/db/receipts/org.nodejs.pkg.bom | while read f; do  sudo rm /usr/local/${f}; done
sudo rm -rf /usr/local/lib/node /usr/local/lib/node_modules /var/db/receipts/org.nodejs.*

# To recap, the best way (I've found) to completely uninstall node + npm is to do the following:

# go to /usr/local/lib and delete any node and node_modules
cd /usr/local/lib
sudo rm -rf node*

# go to /usr/local/include and delete any node and node_modules directory
cd /usr/local/include
sudo rm -rf node*

# if you installed with brew install node, then run brew uninstall node in your terminal
brew uninstall node

# check your Home directory for any "local" or "lib" or "include" folders, and delete any "node" or "node_modules" from there
# go to /usr/local/bin and delete any node executable
cd /usr/local/bin
sudo rm -rf /usr/local/bin/npm
sudo rm -rf /usr/local/bin/node
ls -las

# you may need to do the additional instructions as well:
sudo rm -rf /usr/local/share/man/man1/node.1
sudo rm -rf /usr/local/lib/dtrace/node.d
sudo rm -rf ~/.npm