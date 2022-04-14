FROM ubuntu:20.04

VOLUME /tmp
VOLUME /var/cache/apt/archives

ENV DEBIAN_FRONTEND=noninteractive

# ESLauncher dependencies
RUN set -ex; \
apt-get update; \
apt-get install -y libasound2-dev build-essential pkg-config libsdl2-dev libpng-dev libjpeg-dev libgl1-mesa-dev libglew-dev libopenal-dev libmad0-dev uuid-dev

# AppImage requirements
RUN set -ex; \
apt-get update; \
apt-get install -y curl fuse libfuse2

# Additional Dev Tools
RUN set -ex; \
apt-get update; \
apt-get install -y git gnupg2

# Add Rust debugger
RUN set -ex; \
apt-get update; \
apt-get install -y lldb

# Sound utilities
RUN set -ex; \
apt-get update; \
apt-get install -y alsa-base pulseaudio libasound2-plugins

RUN set -ex; \
apt-get update; \
apt-get install -y pkg-config gcc

# assumes UID 1000
RUN set -ex; \
adduser es-user; \
usermod -a -G audio es-user

USER es-user
WORKDIR /home/es-user

# Install rustup
RUN set -ex; \
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > /tmp/rustup-installer; \
sh /tmp/rustup-installer -y; \
/bin/bash -lc 'cargo search cargo'

CMD /bin/bash
