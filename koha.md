## Installing Koha Repository
### What is Koha?
Koha's modules include: Administration, Patron management, Cash management, Circulation, Cataloging, Course reserves, Serials, Acquisitions, Reports, and OPAC.

1. ```sudo apt autoremove -y && sudo apt clean``` to remove packages that were automatically installed and clear out the local repository.
2.a ```sudo apt install apt-transport-https ca-certificates curl``` 
2.b ```sudo mkdir -p --mode=0755 /etc/apt/keyrings``` to make a new directory for Koha.
2.c ```sudo curl -fsSL https://debian.koha-community.org/koha/gpg.asc -o /etc/apt/keyrings/koha.asc``` to download Koha and connect to Koha repositories that are remote.
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
3. 



## Notes
* Koha requires more computing power than PHP, MySQL, Apache... e2-medium 2 vCPU 1 core, 4 GB RAM, & 20GB HDD.
* The VM Instance will need to allow HTTP traffic and have the network tags: koha-staff-8080 & koha-opac-8081.
* Firewall rules will need to be set in Google Cloud to allow TCP ports 8080 and 8081 for your source subnet. Using 0.0.0.0/0 to capture all.
* Library service platforms (LSP) are next-generation integrated library systems (ILS).
* ```tmux``` & ```tmux attach``` is a terminal multiplexer. If you are disconnected while working, re-establish your connection to your WM.

## Issues
* tmux not installed. Solve: ran ```sudo apt install tmux -y```


