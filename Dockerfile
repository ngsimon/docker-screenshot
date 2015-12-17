FROM ubermuda/phantomjs

ADD https://raw.githubusercontent.com/piether/docker-screenshot/master/rasterize.js /rasterize.js

VOLUME ["/srv"]
WORKDIR /srv

ENTRYPOINT ["/phantomjs/bin/phantomjs", "/rasterize.js"]
