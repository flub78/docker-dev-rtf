# Minimal ansible ctarget container
#
# docker run -ti --name=dev-rtf -v $HOME/.ssh/:/root/.ssh/  flub78/dev-rtf /bin/bash

# FROM ubuntu:14.04
FROM ubuntu
MAINTAINER Frédéric Peignot frederic.peignot@free.fr

RUN apt-get update \
  && apt-get install -y openssh-server \
  python \
	python-apt \
	git \
	vim \
	gcc \
	make \
	rake \
	ruby-dev \
	libffi-dev \
	libtcltk-ruby
	
RUN gem update --system
RUN gem install watir
RUN gem install minitest
RUN gem install minitest-ci
RUN gem install dbi
	
RUN mkdir /var/run/sshd

RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config;

EXPOSE 22

RUN mkdir /root/.ssh/
# Copy over private key, and set permissions
# ADD id_rsa /root/.ssh/id_rsa

# Create known_hosts
RUN touch /root/.ssh/known_hosts
# Add github key
RUN ssh-keyscan github.com >> /root/.ssh/known_hosts


RUN useradd -m dev
# USER dev

RUN (cd /home/dev; git clone https://github.com/flub78/rtf.git)

CMD ["/usr/sbin/sshd", "-D"]

