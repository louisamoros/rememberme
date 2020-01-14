 - Mysql dump from a container to local host. On windows, use `//` to avoid path being replaced by `C://`:
```
docker exec $CONTAINER //usr/bin/mysqldump -u user --password=$PASSWORD equipment > backup.sql
```
