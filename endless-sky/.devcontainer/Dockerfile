FROM ubuntu:24.04

VOLUME /tmp
VOLUME /var/cache/apt/archives

ENV DEBIAN_FRONTEND=noninteractive
SHELL ["/bin/bash", "-exo", "pipefail", "-c"]

# Build tools
RUN \
  apt-get update; \
  apt-get install -y --no-install-recommends \
    g++ cmake ninja-build make zip unzip curl tar gzip pkgconf ccache \
    bison autoconf autoconf-archive automake libtool libltdl-dev

# Endless Sky library dependencies (system packages)
RUN \
  apt-get install -y --no-install-recommends \
    libsdl2-dev libpng-dev libjpeg-dev libavif-dev \
    libglew-dev libopenal-dev libmad0-dev libflac++-dev \
    libminizip-dev uuid-dev zlib1g-dev

# OpenGL / display dependencies
RUN \
  apt-get install -y --no-install-recommends \
    libgl-dev libgl1-mesa-dev libglu1-mesa-dev libgles2-mesa-dev \
    libglvnd-dev libwayland-dev libxkbcommon-dev libegl1-mesa-dev \
    libx11-dev libxft-dev libxext-dev libxmu-dev libxi-dev

# Integration test dependencies
RUN apt-get install -y --no-install-recommends xvfb libosmesa6 mesa-utils x11-utils

# Test framework
RUN apt-get install -y --no-install-recommends catch2

# AppImage requirements
RUN apt-get install -y --no-install-recommends rsync

# Additional Dev Tools
RUN apt-get install -y --no-install-recommends git gnupg2

# Install clang-format for local style formatting
RUN apt-get install -y --no-install-recommends clang-format git-clang-format

# Add C++ debugger
RUN apt-get install -y --no-install-recommends gdb

# Sound utilities
RUN apt-get install -y --no-install-recommends pulseaudio libasound2-plugins

# Packaging / style-check dependencies
RUN apt-get install -y --no-install-recommends python3 python3-venv

# Clean up
RUN rm -rf /var/lib/apt/lists/*

# assumes UID 1000
RUN \
  adduser es-user; \
  usermod -a -G audio es-user

USER es-user
WORKDIR /home/es-user

RUN \
  python3 -m venv ~/venv; \
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
  git clone https://github.com/EndlessSkyCommunity/-Omnis.git

CMD /bin/bash
