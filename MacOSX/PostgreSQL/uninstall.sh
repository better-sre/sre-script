
# help:
# https://gist.github.com/Atlas7/b1a40a2ffd85728b33e7


# installed PostgreSQL with homebrew:
brew uninstall postgresql


# installed with Postgres Installer:
# do:
open /Library/PostgreSQL/9.4/uninstall-postgresql.app

# see:
# The data directory (/Library/PostgreSQL/9.4/data) 
# and service user account (postgres) 
# have not been removed.

# yes:
# Uninstallation completed

# Remove the PostgreSQL and data folders.
sudo rm -rf /Library/PostgreSQL

# Remove the ini file:
sudo rm /etc/postgres-reg.ini

# Remove the PostgreSQL user 
# using System Preferences -> Users & Groups.

# Restore your shared memory settings: 
sudo rm /etc/sysctl.conf




