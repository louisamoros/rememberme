- Delete all remote branches already merged

`git branch -r --merged | grep -v '\*\|master\|trunk\|release' | sed 's/origin\///' | xargs -n 1 git push --delete origin`

- Delete all local branches already merged

`git branch --merged | egrep -v "(^\*|master|trunk|release)" | xargs git branch -d`

- Update Intellij project (magic command)

`mvn idea:clean idea:idea`

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

 - logout a user

`pkill -KILL -u username`

 - number of cores

`cat /proc/cpuinfo | grep processor | wc -l`

 - git rename branch locally and remotely

`git branch -m old_branch new_branch`       - Rename branch locally    
`git push origin :old_branch`               - Delete the old branch    
`git push --set-upstream origin new_branch` - Push the new branch, set local branch to track the new remote

 - merge pdf

`pdftk file1.pdf file2.pdf cat output mergedfile.pdf`

 - create public/private key
 
`openssl genrsa -out mykey.pem 1024 && openssl rsa -in mykey.pem -pubout > mykey.pub`

 - create alias ifconfig

`alias ifconfig=ip -s -c -h a`

