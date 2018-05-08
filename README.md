# What ?

This is a dockerization of JOSM. It allows you to run JOSM without having to install Java or any other dependencies. The only thing required is Docker.

# How ?

Launch it using Docker :
```
docker run --rm -it -v $HOME:$HOME -e DISPLAY=$DISPLAY -e USER -e USERID=$(id -u) -v /tmp/.X11-unix:/tmp/.X11-unix abienvenu/josm
```

# Build ?

If for any strange reason you want to build the Docker image yourself, you can checkout this repository and then launch the build command :
```
docker build -t abienvenu/josm .
```

# Why ?

Because Java is not as portable as we could hope, and JOSM will not launch on Ubuntu 18.04 (see https://josm.openstreetmap.de/ticket/15851). Docker comes to the rescue, and allows us to run JOSM and its dependencies (including Java) on any platform that jave Docker installed.

