#  livingfire-octave

## Install Octave

See documentation https://www.gnu.org/software/octave/

``` bash
# Ubuntu
sudo apt-get -y install octave octave-vrml
```

## Quickstart

``` bash
# open a terminal and clone git
git clone https://github.com/phoen1x/livingfire-octave.git

# go into folder
cd livingfire-octave

# open ocatave commandline
octave-cli

# load source code
octave:1> source kleinBottleFigure8Immersion.m
```

## Documentation

[project page](http://www.livingfire.de/x3dom/octave-goes-html-en/)

## Illustation

![Image of Klein bottle - Figure 8 Immersion](../master/kleinBottleFigure8Immersion.png?raw=true)


## Octave in HTML

**Idea:**
[Octave](https://www.gnu.org/software/octave/) -> [VRML](https://en.wikipedia.org/wiki/VRML) -> [X3D](https://en.wikipedia.org/wiki/X3D) -> [HTML+X3DOM](https://www.x3dom.org/)

See [build from scratch](http://www.livingfire.de/x3dom/octave-goes-html-en/#build-from-scratch) for details.

Make sure you have a working [Docker](https://docs.docker.com/engine/installation/) and
[docker-compose](https://docs.docker.com/compose/install/) environment.

``` bash
# start apache webserver
cd livingfire-octave/x3d
docker-compose up -d

# open X3D webpage
xdg-open http://localhost:3000
```

### HTML Illustation

![Image of Klein bottle - Figure 8 Immersion](../master/kleinBottleFigure8Immersion_vrml.png?raw=true)
