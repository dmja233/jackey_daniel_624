## WordPress Install

1. sudo apt install php-curl php-xml php-imagick php-mbstring php-zip php-intl
2. As always, restart Apache
3. sudo wget https://wordpress.org/latest.zip
   sudo unzip latest.zip
4. Create DB user and a database in MySQL
5. Grant DB user privileges to the database
6. Change directory to /wordpress
7. sudo cp wp-config-sample.php wp-config.php
   sudo nano wp-config.php
8. Update config file with db and db user
9. Web to domain/IP /wordpress to finalize setup

## Wordpress Login

User: daniel.jackey
Pass: Same pass used throughout class

## Issues 
1. The unzip command did not work. Solve: Reinstall unzip
2. "error establishing a database connection when browsing to /wordpress. Solve: error in DB credentials in config file.
