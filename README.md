<p align=center><img alt="ES + VSCode logo" src="https://user-images.githubusercontent.com/875669/158088093-50c40a92-bee1-45dc-b740-32162cd42ce2.png" /></p>

<h1><p align=center>Endless Sky<br />VSCode Dev Containers</p></h1>

Portable development environments for the game [Endless Sky][es] and related
projects.

Available Dev Containers
------------------------

- [endless-sky-plugins Dev Container](endless-sky-plugins) for the community
  project [endless-sky-plugins][plugins].

[plugins]: https://github.com/EndlessSkyCommunity/endless-sky-plugins


Local Dev Environment Setup
---------------------------

All you need to have installed is:

- [Docker Desktop][desktop] (for Windows/Mac) or [Docker Engine][engine] (Linux)
- VSCode
- VSCode extension: [`Remote - Containers`][ext] (VSCode will ask to
  automatically install it for you when you open the project)

On Linux, you may grant your user access to Docker by adding your own user to
the Docker group.  However, this will reduce the security of your user.
**WARNING:** Do this at your own risk.

    usermod -a -G docker $USER

[desktop]: https://www.docker.com/products/docker-desktop
[engine]: https://docs.docker.com/engine/install/
[ext]: https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers

About Dev Containers
--------------------

Whether you're developing on Windows, Mac, or Linux you can have a fully
integrated development environment with all dependencies available inside of a
Docker runtime.

> Please Note: VSCode does not currently support Windows containers on Windows
> hosts.

This project integrates [VSCode Dev Container][devc] with multiple Endless Sky
official and community projects.

[devc]: https://code.visualstudio.com/docs/remote/containers
[es]: https://endless-sky.github.io/
