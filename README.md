#  livingfire-octave

Sample projects for GNU Octave

## Install Octave

See documentation https://www.gnu.org/software/octave/

``` bash
# Ubuntu
apt-get install octave
```

## Usage of samples

``` bash
# open a terminal and clone git
git clone https://github.com/phoen1x/github-phoen1x-octave.git

# go into folder
cd github-phoen1x-octave

# open ocatave commandline
octave-cli

# load source code
octave:1> source kleinBottleFigure8Immersion.m
```

## Illustation

![Image of Klein bottle - Figure 8 Immersion](../master/kleinBottleFigure8Immersion.png?raw=true)


## Octave in HTML

**Idea:**
[Octave](https://www.gnu.org/software/octave/) -> [VRML](https://en.wikipedia.org/wiki/VRML) -> [X3D](https://en.wikipedia.org/wiki/X3D) -> [HTML+X3DOM](https://www.x3dom.org/)

### Octave -> VRML

Octave can generate [VRML](https://en.wikipedia.org/wiki/VRML) with the [vmrl Plugin](https://octave.sourceforge.io/vrml/overview.html).

``` bash
# Ubuntu
apt-get install octave-vrml

# generate .wrl file
octave-cli kleinBottleFigure8Immersion_vrml.m
```

### VRML -> HTML

You can convert your VRML online via [x3d_encoding_converter - Fraunhofer Institute](http://doc.instantreality.org/tools/x3d_encoding_converter/). Here you can choose output encoding: **HTML5 encoded webpage (x3dom html5)**

### HTML Sample

You can open the Sample **x3d/htdocs/index.html** with [Firefox](https://www.mozilla.org/firefox). But due to [CORS restrictions](https://de.wikipedia.org/wiki/Cross-Origin_Resource_Sharing) you will only see a **BLANK WEBPAGE in most web browsers WITHOUT using a webserver**. I recommend to use [Docker](https://docs.docker.com/engine/installation/) and
[docker-compose](https://docs.docker.com/compose/install/).

``` bash
# start apache webserver
cd x3d
docker-compose up -d

# open X3D webpage
xdg-open http://localhost:3000
```

### HTML Illustation

![Image of Klein bottle - Figure 8 Immersion](../master/kleinBottleFigure8Immersion_vrml.png?raw=true)
