A web screenshot container based on [phantomjs](http://phantomjs.org/)'s [rasterize.js](https://raw.githubusercontent.com/ariya/phantomjs/master/examples/rasterize.js).

Based on a [phantomjs container](https://github.com/ubermuda/docker-phantomjs).

## Build

    $ git clone https://github.com/piether/docker-screenshot.git
    $ cd docker-screenshot
    $ docker build -rm -t screenshot .

## Usage

Because phantomjs runs inside the container, you need to bind mount a volume to retrieve the screenshot.

The container is configured to write screenshots to `/srv`, so bind-mounting `$PWD` (or whatever directory you want to screenshot created in) to it seems like a good idea.

    $ docker run -v $PWD:/srv screenshot http://www.alfred-shop.de/artikel/00-PVM04059DPNS sc3.png 1920px 2000
