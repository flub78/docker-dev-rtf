docker run -ti --name=dev-rtf -e DISPLAY=$DISPLAY \
	-v $HOME/.ssh/:/root/.ssh/ -v /tmp/.X11-unix:/tmp/.X11-unix \
	-v $HOME/git/:/home/dev/git/ \
	--link mysql:mysql \
	-p 10080:80 flub78/dev-rtf /bin/bash
