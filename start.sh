docker run -ti --name=dev-rtf -e DISPLAY=$DISPLAY -v $HOME/.ssh/:/root/.ssh/ -v /tmp/.X11-unix:/tmp/.X11-unix flub78/dev-rtf /bin/bash
