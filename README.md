A web screenshot container based on [phantomjs](http://phantomjs.org/)'s [rasterize.js](https://raw.githubusercontent.com/ariya/phantomjs/master/examples/rasterize.js).

Based on a [phantomjs container](https://github.com/ubermuda/docker-phantomjs).

## Quick Start
Run the following command:

    $ docker run --rm -v $PWD:/srv lifenz/docker-screenshot https://google.com test.png 1920px 2000 1
  

Such as:
test.png -> file name to be saved
1920px -> the resolution of the target picture
2000 -> the time to wait in ms
1 -> the page zoom factor

## Local Build

    $ git clone git@github.com:ngsimon/docker-screenshot.git
    $ cd docker-screenshot
    $ docker build -t screenshot .

## Local Usage

Because phantomjs runs inside the container, you need to bind mount a volume to retrieve the screenshot.

The container is configured to write screenshots to `/srv`, so bind-mounting `$PWD` (or whatever directory you want to screenshot created in) to it seems like a good idea.

    $ docker run --rm -v $PWD:/srv screenshot https://google.com test.png 1920px 2000 1
  

Such as:
test.png -> file name to be saved
1920px -> the resolution of the target picture
2000 -> the time to wait in ms
1 -> the page zoom factor


## Other
Based on the original project: https://github.com/ubermuda/docker-screenshot
Modified sources: https://github.com/ngsimon/docker-screenshot
