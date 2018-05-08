# What ?

This is a dockerization of JOSM.

# How ?

Launch it using Docker :
```
docker run --rm -it -v $HOME:$HOME -e DISPLAY=$DISPLAY -e USER -e USERID=$(id -u) -v /tmp/.X11-unix:/tmp/.X11-unix abienvenu/josm
```

# Build ?

If for any strange reason you want to build the Docker image yourself, it is as simple as :
```
docker build -t abienvenu/josm .
```

# Why ?

Because Java is not as portable as we could hope, and JOSM will not launch on Ubuntu 18.04 (see https://josm.openstreetmap.de/ticket/15851). Docker comes to the rescue, and allows us to run JOSM and its dependencies (including Java) on any platform that can run Docker. This way, nothing but Docker is required on the host to run JOSM.

