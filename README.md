# docker-flussonic
Docker Build for Flussonic Media Server

## Docker BUILD
<code>docker build -t flussonic:latest .</code>

## Docker CREATE
<code>docker create -it -p 80:80 -p 1935:1935 --name flussonic -h flussonic flussonic:latest</code>

## Docker START
<code>docker start flussonic</code>
