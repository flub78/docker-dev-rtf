export MYSQL_ROOT_PASSWORD='toto'
docker run --name mysql -e MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD -d mysql

