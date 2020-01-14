 - Mysql dump from a container to local host. On windows, use `//` to avoid path being replaced by `C://`:
```
docker exec $CONTAINER //usr/bin/mysqldump -u user --password=$PASSWORD $DATABASE > backup.sql
```
 - Mysql restore from local host to container.
```
cat backup.sql | docker exec -i $CONTAINER /usr/bin/mysql -u root --password=$PASSWORD $DATABASE
```
