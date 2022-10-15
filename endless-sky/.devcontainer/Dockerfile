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
apt-get install -y python3.8-venv

# SonarQube sonar-scanner
RUN set -ex; \
apt-get update; \
apt-get install -y zip unzip; \
cd /opt; \
curl -LO https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.7.0.2747-linux.zip; \
echo '3e121d85a4adb1f30b917d5f3eb897966b59e02c3d6d313a78dcd964193dc963  sonar-scanner-cli-4.7.0.2747-linux.zip' | sha256sum -c -; \
unzip sonar-scanner-cli*.zip; \
rm *.zip; \
find . -maxdepth 1 -type d -name 'sonar-scanner*' | xargs -n1 -I{} -- ln -s {} sonar-scanner; \
echo '(echo "$PATH" | grep sonar-scanner;) > /dev/null 2>&1 || export PATH="/opt/sonar-scanner/bin:$PATH"' > /etc/profile.d/99-sonar-scanner

# assumes UID 1000
RUN set -ex; \
adduser es-user; \
usermod -a -G audio es-user

USER es-user
WORKDIR /home/es-user

# set path for sonar-scanner
RUN set -ex; \
echo 'source /etc/profile.d/99-sonar-scanner' >> ~/.bashrc

# set up Mac OS XCode support
RUN set -ex; \
python3 -m venv ~/venv; \
. ~/venv/bin/activate; \
pip install wheel==0.37.1; \
pip install docopt==0.6.2 openstep-parser==1.5.3 pbxproj==3.4.0; \
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
