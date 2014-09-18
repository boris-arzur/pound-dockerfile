pound-dockerfile
================

I use it as a front to an nginx/roundcube container.


Steps:

0.  `git clone https://github.com/boris-arzur/pound-dockerfile && cd pound-dockerfile`
1. `docker build -t boris/pound .` to build the image;
2. I have a thinred/roundcube container, see [here](https://github.com/boris-arzur/roundcube-docker) to create this 'roundcube' container;
3. Set up your certs, if you're looking for a Certificate Authority, go see [cacert.org](https://www.cacert.org/)
4. If you could go ahead and customize pound.cfg.template, that would be great;
5. Mmmkay?
6. `docker run -d --name pound --link roundcube:http boris/pound`
7. Direct your browser to `docker inspect --format '{{ .NetworkSettings.IPAddress }}' pound`, don't forget to use https.


Additional steps:

1. You may want to modify the `--link` name;
2. You need to edit accordingly launch.sh & pound.cfg.template;
