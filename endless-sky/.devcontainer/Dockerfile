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
apt-get install -y curl fuse libfuse2 rsync

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

# Mac OS and packaging dependencies
RUN set -ex; \
apt-get update; \
apt-get install -y python3.9 python3.9-venv

# assumes UID 1000
RUN set -ex; \
adduser es-user; \
usermod -a -G audio es-user

USER es-user
WORKDIR /home/es-user

# set up Mac OS XCode support
RUN set -ex; \
python3.9 -m venv ~/venv; \
. ~/venv/bin/activate; \
pip install wheel==0.37.1; \
pip install docopt==0.6.2 openstep-parser==1.5.3 pbxproj==3.4.0; \
pip install regex; \
echo 'source ~/venv/bin/activate' >> ~/.bashrc

# set up global gitignore
RUN set -ex; \
mkdir -p .config/git; \
echo '.clang-format' > .config/git/ignore

# Install Endless Sky plugins for developer testing
RUN set -ex; \
mkdir -p ~/.local/share/endless-sky/plugins; \
cd ~/.local/share/endless-sky/plugins; \
git clone https://github.com/endless-sky/all-content-plugin.git; \
git clone https://github.com/Adde-Endless-Sky/AES-Omnis.git

CMD /bin/bash
