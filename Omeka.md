## Installing Omeka

```cd /var/www/html
sudo wget https://github.com/omeka/Omeka/releases/download/v3.1.2/omeka-3.1.2.zip
sudo unzip omeka-3.1.2.zip
```
*```sudo apt install imagemagick``` installs ImageMagick, utilities to work with photo files. Omeka uses ImageMagick to create thumbnail images
* ```sudo a2enmod rewrite``` Apache module to rewrite URLs
* ```chmod``` change mode changes file permissions
* ```-R``` Recursive applies the change to every file and  subfolder inside directory
* ```g+w``` Group & Write lets anyone in the file's assigned group edit or delete  files
* ```*``` Means everything in the folder

*: A wildcard meaning "everything in this folder."

## Credentials
User: omeka
Pass: Same pass

## Notes
* Omeka admin dashboard has a very similar feel to WordPress.
* ImageMagik and a2enmod rewrite are required for Omeka.
* A db user and db table is needed for Omeka 


## Issues
1. Imagemagick kept failing. Solve: Kill the process and start over.
Example:
```
daniel_jackey@spring2026:~$ sudo apt install imagemagick
Waiting for cache lock: Could not get lock /var/lib/dpkg/lock-frontend. It is held by process 3988881 (apt)      
^Citing for cache lock: Could not get lock /var/lib/dpkg/lock-frontend. It is held by process 3988881 (apt)... 1s
daniel_jackey@spring2026:~$ ps -fp 3988881
UID          PID    PPID  C STIME TTY          TIME CMD
root     3988881 3988880  0 23:14 pts/1    00:00:01 apt install imagemagick
daniel_jackey@spring2026:~$ ^C
daniel_jackey@spring2026:~$ sudo kill 3988881
daniel_jackey@spring2026:~$ sudo apt install imagemagick```
