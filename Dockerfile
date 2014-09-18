FROM    debian:stable
ENV     DEBIAN_FRONTEND noninteractive
MAINTAINER boris

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get install -y --no-install-recommends pound \
    && mkdir -p /null
ADD pound.cfg.template /
ADD launch.sh /
#note how the following files were not included with this Dockerfile
ADD product_placement+cacert.org_root.crt /
ADD server.pem /

EXPOSE 443
CMD /launch.sh
