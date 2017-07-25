# v2ray docker file

## usage

1. git clone this repo && enter to this folder
2. change config.json base on your requirement
3. `docker build .`  and you will get a hash id
4. go into runtime folder
5. docker run -d -p [outside\_port]:[inside\_port] -v \`pwd\`:/v2ray/runtime hash_id
6. enjoy your days!

## v2ray repo link
https://www.v2ray.com
