# Update Packages
apt-get update

# Upgrade Packages
apt-get upgrade

# Git
apt-get install -y git

# Apache
apt-get install -y apache2

# Enable Apache mods
a2enmod rewrite

# Add Onrej PPA Repo (PHP 7.2)
apt-add-repository ppa:ondrej/php
apt-get update

# Install PHP
apt-get install -y php7.2

# PHP apache mod
apt-get install -y libapache2-mod-php7.2

# Restart Apache
service apache2 restart

# PHP mods
apt-get install -y php7.2-common
apt-get install -y php7.2-mycrypt
apt-get install -y php7.2-zip

# Set MySQL Password
debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

# Install MySQL
apt-get install -y mysql-server

# PHP-MySQL Lib
apt-get install -y php7.2-mysql

# Restart Apache
sudo service apache2 restart