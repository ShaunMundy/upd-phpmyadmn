#!/bin/bash
mv /usr/share/phpmyadmin/ /usr/share/phpmyadmin.bak
mkdir /usr/share/phpmyadmin/
cd /usr/share/phpmyadmin/
wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-all-languages.tar.gz
tar xzf phpMyAdmin-5.0.2-all-languages.tar.gz
mv phpMyAdmin-5.0.2-all-languages/* /usr/share/phpmyadmin
sed -i "s#('TEMP_DIR', './tmp/')#('TEMP_DIR', '/var/lib/phpmyadmin/tmp/')#g" /usr/share/phpmyadmin/libraries/vendor_config.php
sed -i "s#('CONFIG_DIR', '')#('CONFIG_DIR', '/etc/phpmyadmin/')#g" /usr/share/phpmyadmin/libraries/vendor_config.php
rm /usr/share/phpmyadmin/phpMyAdmin-5.0.2-all-languages.tar.gz
rm -rf /usr/share/phpmyadmin/phpMyAdmin-5.0.2-all-languages
rm -rf /usr/share/phpmyadmin.bak
