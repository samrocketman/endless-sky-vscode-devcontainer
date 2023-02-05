FROM ubuntu:20.04

VOLUME /tmp
VOLUME /var/cache/apt/archives

ENV DEBIAN_FRONTEND=noninteractive
SHELL ["/bin/bash", "-exo", "pipefail", "-c"]

# Endless sky requirements
RUN \
  apt-get update; \
  apt-get install -y make zip unzip curl tar gzip pkg-config bison autoconf libtool; \
  apt-get install -y g++ libgl1-mesa-dev libglu1-mesa-dev libx11-dev libxft-dev libxext-dev

# Install latest cmake and ninja
RUN \
  cd /usr/local; \
  curl -sSfL https://github.com/Kitware/CMake/releases/download/v3.25.2/cmake-3.25.2-linux-x86_64.tar.gz | tar --strip-components=1 -xz; \
  cd bin/; \
  curl -sSfLO https://github.com/ninja-build/ninja/releases/download/v1.11.1/ninja-linux.zip; \
  unzip ninja-linux.zip; \
  rm ninja-linux.zip

# Integration test dependencies
RUN \
  apt-get update; \
  apt-get install -y xvfb libosmesa6 mesa-utils

# AppImage requirements
RUN \
  apt-get update; \
  apt-get install -y rsync

# Additional Dev Tools
RUN \
  apt-get update; \
  apt-get install -y git gnupg2

# Install clang-format v13
ADD clang-13.list /etc/apt/sources.list.d/
RUN \
  curl -sSfL https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add -; \
  apt-get update; \
  apt-get install -y clang-format-13

# Add C++ debugger
RUN \
  apt-get update; \
  apt-get install -y gdb

# Sound utilities
RUN \
  apt-get update; \
  apt-get install -y alsa-base pulseaudio libasound2-plugins

# Packaging dependencies
RUN \
  apt-get update; \
  apt-get install -y python3.9 python3.9-venv

# assumes UID 1000
RUN \
  adduser es-user; \
  usermod -a -G audio es-user

USER es-user
WORKDIR /home/es-user

RUN \
  python3.9 -m venv ~/venv; \
  /bin/bash -c 'source ~/venv/bin/activate; pip install regex'


# set up global gitignore
RUN \
  mkdir -p .config/git; \
  echo '.clang-format' > .config/git/ignore

# Install Endless Sky plugins for developer testing
RUN \
  mkdir -p ~/.local/share/endless-sky/plugins; \
  cd ~/.local/share/endless-sky/plugins; \
  git clone https://github.com/endless-sky/all-content-plugin.git; \
  git clone https://github.com/Adde-Endless-Sky/AES-Omnis.git

CMD /bin/bash
