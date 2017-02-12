# docker-dev-rtf
Dockerfile to create a RTF development environment

RTF is a ruby test environment. https://github.com/flub78/rtf.git. Ruby and miscelaneous Ruby development modules are installed in the container as well than the project git workspace. There is support to access a mysql database from the container, but no server is installed (use another docker container).

There is no support for Ruby on Rail, but it may change.


## Execution

You can execute and adapt the provided shortcut scripts, to build, start stop or execute the container.

## Mysql

The container can by used to access a Mysql database (for example runnning on a mysql container)

export MYSQL_ROOT_PASSWORD='toto'
docker run --name mysql -e MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD -d mysql

to start phpmyadmin
docker run --name myadmin -d --link mysql:db -p 9999:80 phpmyadmin/phpmyadmin
http://localhost:9999

inside the mysql client container:
mysql -h"$MYSQL_PORT_3306_TCP_ADDR" -P"$MYSQL_PORT_3306_TCP_PORT" -uroot -p"$MYSQL_ENV_MYSQL_ROOT_PASSWORD"

mysql -h mysql -P 3306 -uroot -ptoto

mysql -h 172.17.0.2 -P 3306 -uroot -ptoto



