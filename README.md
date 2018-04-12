# Docker Container for Alice Sample Bot (Perfect)

This is a Docker container for an [Alice Sample Bot](git@github.com:stansidel/alice-dialog-sample-perfect.git) written for the Perfect Swift Server-Side framework.

To build the container, make sure you have Docker installed and set up on your machine and run these commands in the Terminal:
```
git clone --recurse-submodules git@github.com:stansidel/alice-dialog-sample-docker.git
cd alice-dialog-sample-docker
docker build -t alice-dialog-sample-docker .
docker run --name alice-dialog-sample-docker -p 4000:8181 alice-dialog-sample-docker
```

You can now send POST requests to "http://localhost:4000/v1/alice" (see [the bot docs](https://github.com/stansidel/alice-dialog-sample-perfect)). If you're using docker-machine, replace `localhost` with the machine IP that you can get by running `docker-machine ip`.

If you like to test your Docker setup from the Internet, you may find ngrok very useful for that. Say, you have set it up on the system and are using docker-machine for working with docker. To expose your local (not-so-local in fact) host you can run the following command in the Terminal:

```
ngrok http -subdomain=alice-dialog-sample-docker $(docker-machine ip):4000
```
