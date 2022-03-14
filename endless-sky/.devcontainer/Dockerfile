FROM ubuntu:20.04

VOLUME /tmp
VOLUME /var/cache/apt/archives

ENV DEBIAN_FRONTEND=noninteractive

# Endless sky requirements
RUN set -ex; \
apt-get update; \
apt-get install -y g++ scons libsdl2-dev libpng-dev libjpeg-dev libgl1-mesa-dev libglew-dev libopenal-dev libmad0-dev uuid-dev

# AppImage requirements
RUN set -ex; \
apt-get update; \
apt-get install -y curl fuse libfuse2

# Additional Dev Tools
RUN set -ex; \
apt-get update; \
apt-get install -y git

# assumes UID 1000
RUN adduser es-user
USER es-user
WORKDIR /home/es-user
CMD /bin/bash
