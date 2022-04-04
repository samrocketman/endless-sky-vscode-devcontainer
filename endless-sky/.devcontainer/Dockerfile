FROM ubuntu:20.04

VOLUME /tmp
VOLUME /var/cache/apt/archives

ENV DEBIAN_FRONTEND=noninteractive

# Endless sky requirements
RUN set -ex; \
apt-get update; \
apt-get install -y g++ scons libsdl2-dev libpng-dev libjpeg-dev libgl1-mesa-dev libglew-dev libopenal-dev libmad0-dev uuid-dev

# Integration test dependencies
RUN set -ex; \
apt-get update; \
apt-get install -y xvfb libosmesa6 mesa-utils

# AppImage requirements
RUN set -ex; \
apt-get update; \
apt-get install -y curl fuse libfuse2

# Additional Dev Tools
RUN set -ex; \
apt-get update; \
apt-get install -y git gnupg2

# Install clang-format v13
ADD clang-13.list /etc/apt/sources.list.d/
RUN set -ex; \
curl -sSfL https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add -; \
apt-get update; \
apt-get install -y clang-format-13

# Add C++ debugger
RUN set -ex; \
apt-get update; \
apt-get install -y gdb

# Sound utilities
RUN set -ex; \
apt-get update; \
apt-get install -y alsa-base pulseaudio libasound2-plugins

# assumes UID 1000
RUN set -ex; \
adduser es-user; \
usermod -a -G audio es-user

USER es-user
WORKDIR /home/es-user

# Install Endless Sky plugins for developer testing
RUN set -ex; \
if [ ! -d ~/.local/share/endless-sky/plugins/all-content-plugin ]; then \
    mkdir -p ~/.local/share/endless-sky/plugins; \
    cd ~/.local/share/endless-sky/plugins; \
    git clone https://github.com/endless-sky/all-content-plugin.git; \
fi

CMD /bin/bash
