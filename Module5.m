## What is an OPAC?
OPAC is the interface that sits between the back-end library database and what the end user sees. This interface allows users to search the database for resources.

## What is a relational database?
The relational database, commonly MySQL, is the engine that connects data tables that are linked together in a library (or other) system. When the OPAC query is asked by the user, 
The relational database finds the linked data across the many tables that make up the database. For example, a single resource could be broken up by title, author, date, etc and 
the relational database uses the keys to connect them.

**Step One**
Credentials are defined in a configuration file that establishes the connection between the OPAC and the data. The code, typically PHP, initiates a handshake between the interface 
and the database.

**Step Two**
HTML on the front-end will handle inputs from the user. That data is then sent to the database via an INSERT syntax in MySQL, and the OPAC reports back if the record modification was 
successful or not.

**Step Three**
The OPAC will use other MySQL syntax, such as SELECT, FROM, and WHERE, to capture a string from the database. If there is a filter, LIKE will be included.\

**Step Four**
To move towards a more production environment, ideally, there would be authentication and roles associated with the users who are signing in. Additionally, more data logic could be used
to give more data to the end user when searching with the OPAC, such as users' checked-out and due dates. Maybe there could also be connections that automatically update the data on the 
back end to make a more cohesive system easier to manage.

**Step Five**
a.) You will want to make sure Apache and Ubuntu are up to date. b.) A MySQL user and database will need to be created. c.) Permissions and configuration files will need to be accurate to 
prevent access to  malicious users and allow access to actual users. d.) directory permissions will need to be applied. e.) If not already, PHP will need to be installed.

## Data Types/Small Details
VARCHAR and INT have multiple different varieties, to my understanding, that prevent malicious attacks. Depending on the data type, functions of the database may be limited, but for good reason.

## Documentation
Database setup was the easiest function I have had to complete. The only issue I ran into was related to directory permissions at the end. Somehow, I blocked out the www user from accessing
the OPAC. I had to search for database config file examples to figure out that I was missing syntax in my 000-default.config. At one time in my life, I knew PHP code; unfortunately, this go around 
I did not attempt to make sense of what I didn't understand.
