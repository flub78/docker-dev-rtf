# docker-dev-rtf
Dockerfile to create a RTF development environment

RTF is a ruby test environment. u71324177@aeroclub-abbeville.fr:git/rtf

ssh-keyscan aeroclub-abbeville.fr >> ~/.ssh/known_hosts

## Execution

To start the container:
docker run -ti --name=dev-rtf -v $HOME/.ssh/:/root/.ssh/  flub78/dev-rtf /bin/bash

To stop it:
docker rm -f dev-rtf

## Inside the container git is available
cd git
git clone u71324177@aeroclub-abbeville.fr:git/rtf

