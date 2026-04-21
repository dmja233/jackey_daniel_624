## Installing Koha Repository
### What is Koha?
Koha's modules include: Administration, Patron management, Cash management, Circulation, Cataloging, Course reserves, Serials, Acquisitions, Reports, and OPAC.

1. ```sudo apt autoremove -y && sudo apt clean``` to remove packages that were automatically installed and clear out the local repository.
2.  ```sudo apt install apt-transport-https ca-certificates curl``` 
* ```sudo mkdir -p --mode=0755 /etc/apt/keyrings``` to make a new directory for Koha.
* ```sudo curl -fsSL https://debian.koha-community.org/koha/gpg.asc -o /etc/apt/keyrings/koha.asc``` to download Koha and connect to Koha repositories that are remote.
3. root in with ```sudo su```
4. Copy and paste ```tee /etc/apt/sources.list.d/koha.sources <<EOF```
```Types: deb```
```URIs: https://debian.koha-community.org/koha/```
```Suites: 25.05```
```Components: main```
```Signed-By: /etc/apt/keyrings/koha.asc```
```EOF```
5. exit root

## Installing MariaDB

1. ```sudo apt update```
```sudo apt install mariadb-server``` 

## Installing Koha

1. ```apt show koha-common``` to review the package. You will notice it is large. 1716 MB
2. ```sudo apt install koha-common``` to install the package. 
3. ```sudo cp /etc/koha/koha-sites.conf /etc/koha/koha-sites.conf.backup``` to make a copy of the config file before making critical updates. This will allow me to return to the original if needed.
4. ``` sudo nano /etc/koha/koha-sites.conf``` to open the config file to edit.
5. edit "INTRAPORT" to 8080 & "OPACPORT" 8081
6. [Install Apache2]([url](https://github.com/dmja233/jackey_daniel_624/blob/main/apache.md))
7. Configure Apache 2 to listen on the same ports as Koha 8080 & 8081 with ```etc/apache2/ports.conf```
8. Create a Koha instance with ```sudo koha-create --create-db bibliolib```. The instance name is 'bibliolib.'
9. ```sudo a2dissite 000-default``` to stop the default It Works page. ```sudo a2enmod deflate``` to set compression between the server and client. ```sudo a2ensite bibliolib``` to enable bibliolib.
10. ```sudo koha-passwd bibliolib``` displays the login credentials for Koha for the web installer.
11. The web installer will walk you through selecting a language and ensuring the correct dependencies are installed. It will also check for the correct db and db user.
12. When prompted, select 'Marc21' as it is used globally.

## Notes
* Koha requires more computing power than PHP, MySQL, Apache... e2-medium 2 vCPU 1 core, 4 GB RAM, & 20GB HDD.
* The VM Instance will need to allow HTTP traffic and have the network tags: koha-staff-8080 & koha-opac-8081.
* Firewall rules will need to be set in Google Cloud to allow TCP ports 8080 and 8081 for your source subnet. Using 0.0.0.0/0 to capture all.
* Library service platforms (LSP) are next-generation integrated library systems (ILS).
* ```tmux``` & ```tmux attach``` is a terminal multiplexer. If you are disconnected while working, re-establish your connection to your WM
* Username for bibliolib: koha_bibliolib AND Password for bibliolib: }Y[9*mf5-_W++gk3

## Issues
* tmux not installed. Solve: ran ```sudo apt install tmux -y```
* ```/etc/koha/koha-sites.conf``` did not open the config file. Tried Sudo Nano, but Nano was not installed. Solve: ```sudo apt install nano``` and run ``` sudo nano /etc/koha/koha-sites.conf```

## Daniel Specific Notes
* Got this error and unsure why ```DBD::mysql::db do failed: Cannot add or update a child row: a foreign key constraint fails (`koha_bibliolib`.`borrowers`, CONSTRAINT `borrowers_ibfk_1` FOREIGN KEY (`categorycode`) REFERENCES `categories` (`categorycode`)) at /usr/share/koha/lib/C4/Installer.pm line 605.```
* Setting up and the orientation of Koha was fairly straightforward. The only thing I had to search for documentation on was what "patron categories" were. 

