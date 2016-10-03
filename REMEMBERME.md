 - Copy ssh pub to remote

`ssh-copy-id user@123.45.56.78`

 - Ubunutu version

`lsb_release -a`

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

 - Ubuntu ppa list

`cd /etc/apt/sources.list.d/`

 - Rename recursively part of multiples files in a directory
 
`find /your/target/path/ -type f -exec rename 's/special/regular/' '{}' \;`

 - Git push tag

` git push origin <tag-name>`

 - Git remove tag (local/remote)

`git tag -d release01` : local

`git push origin :refs/tags/release01` : remote

 - getting a random number

`shuf -i MIN-MAX -n COUNT`

 - getting a random base64 string

`date +%s | sha256sum | base64 | head -c LENGTH`

`openssl rand -base64 LENGTH`
