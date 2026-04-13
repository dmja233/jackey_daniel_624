## Steps/How to Install & use MySQL

```sudo apt install mysql-server```

Result: Install a bunch of packages related to an SQL database.

```apt policy mysql-server```

Result: check the installation status and version availability of the MySQL server package

Example:
mysql-server:
  Installed: 8.0.45-0ubuntu0.24.04.1
  Candidate: 8.0.45-0ubuntu0.24.04.1
  Version table:
 *** 8.0.45-0ubuntu0.24.04.1 500
        500 http://us-east5.gce.archive.ubuntu.com/ubuntu noble-updates/main amd64 Packages
        500 http://security.ubuntu.com/ubuntu noble-security/main amd64 Packages
        100 /var/lib/dpkg/status
     8.0.36-2ubuntu3 500
        500 http://us-east5.gce.archive.ubuntu.com/ubuntu noble/main amd64 Packages

```mysql --version``` 
Result: Does the same thing as apt policy mysql-server

```systemctl status mysql``` 

Result: check for MySQL service running
Example:
● mysql.service - MySQL Community Server
     Loaded: loaded (/usr/lib/systemd/system/mysql.service; enabled; preset: enabled)
     Active: active (running) since Sun 2026-03-15 18:15:46 UTC; 1min 13s ago
    Process: 2465094 ExecStartPre=/usr/share/mysql/mysql-systemd-start pre (code=exited, status=0/SUCCESS)
   Main PID: 2465103 (mysqld)
     Status: "Server is operational"
      Tasks: 37 (limit: 1057)
     Memory: 351.3M (peak: 366.4M)
        CPU: 1.195s
     CGroup: /system.slice/mysql.service
             └─2465103 /usr/sbin/mysqld

Mar 15 18:15:45 spring2026 systemd[1]: Starting mysql.service - MySQL Community Server...
Mar 15 18:15:46 spring2026 systemd[1]: Started mysql.service - MySQL Community Server.

```sudo mysql_secure_installation```
Result: takes you through a series of security configurations such as removing remote root access

```sudo mysql -u root```
Result: logs into sql

```mysql> show databases;```
Result: shows all databases
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.01 sec)

```mysql> \q```
Result: to quit MySQL


```
create table books (
        id int unsigned not null auto_increment,
        author varchar(150) not null,
        title varchar(150) not null,
        copyright year not null,
        primary key (id)
);
```
Result: Creates a new table in the database with the defined rows above (eg. id, author, etc)

```insert into books (author, title, copyright) values
('Jennifer Egan', 'The Candy House', '2022'),
('Imbolo Mbue', 'How Beautiful We Were', '2021'),
('Lydia Millet', 'A Children\'s Bible', '2020'),
('Julia Phillips', 'Disappearing Earth', '2019');
```
Result: Inputs data into the database table

```select * from books;```
Result: retrieve all columns and all rows from the table books

```sudo apt install php-mysql```
Result: to install PHP support for MySQL




Issue: C/P from instructions to VM showed a syntax error
Solve: Remove the mysql> from the instructions
Issue: DB connection not working
Solve: Forgot that I changed the user and pass in the config file from opacuser to daniel.jackey
