## To install Apache:
```sudo apt install apache2```
```sudo apt install w3m```
Result: installs the Apache web server and the language interpreter. 
Note: Do not forget to apt update & upgrade.

## Notes

```systemctl status apache2```
Result: Checks the running status of Apache

```
cd /var/www/html/
sudo mv index.html index.original.html
sudo nano index.html
```
Result: Changes the directory to where Apache stores the webpages, then copies the default to another file name to allow me to update index.html for public facing. ```nano``` is the text editor. 

If the default webpage (index.html) is working properly, it will say 'It Works' at the bottom.

## Daniel's VM public IP:
34.127.173.177

## http://34.127.173.177/index.html 
Result: takes me to the Apache homepage. 
