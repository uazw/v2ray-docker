# v2ray docker file

## usage

1. git clone this repo && enter to this folder
2. change config.json base on your requirement
3. `docker build .`  and you will get a hash id
4. docker run -d -p [outside\_port]:[inside\_port] -v \`pwd\`:/v2ray/runtime hash_id
5. enjoy your days!