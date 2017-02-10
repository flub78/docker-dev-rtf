# docker-dev-rtf
Dockerfile to create a RTF development environment

RTF is a ruby test environment. https://github.com/flub78/rtf.git

ssh-keyscan github.com >> ~/.ssh/known_hosts

## Execution

To start the container:
docker run -ti --name=dev-rtf -v $HOME/.ssh/:/root/.ssh/  flub78/dev-rtf /bin/bash
docker run -ti --name=dev-rtf -e DISPLAY=$DISPLAY -v $HOME/.ssh/:/root/.ssh/ -v /tmp/.X11-unix:/tmp/.X11-unix flub78/dev-rtf /bin/bash

To stop it:
docker rm -f dev-rtf

