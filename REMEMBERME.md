 - Find all files and sufolders from current directory based on regex and !regex

`find . -ipath "*something*" ! -ipath "*target*"`

 - Show all users of a computer

`cut -d: -f1 /etc/passwd`

 - Print PID using 8080 

`fuser 8080/tcp`

 - Kill process using 8080

`fuser -k 8080/tcp`

 - Rename recursively image in base64

`find . -name "*.png" -exec sh -c 'base64 -w 0 {} > {}.base64' \;`

 - Rm images without tags

`docker rmi $(docker images | grep "^<none>" | awk "{print $3}")`

 - Docker load tar image

`docker load -i my-image.tar`

 - Docker create tag from image
 
 `docker save -o my-image.tar my-image:latest`
