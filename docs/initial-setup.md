Local Dev Environment Setup
---------------------------

All you need to have installed is:

- [Docker Engine][engine] (Linux)
- MS VSCode
- VSCode extension: [`Remote - Containers`][ext] (VSCode will ask to
  automatically install it for you when you open the project)

On Linux, you may grant your user access to Docker by adding your own user to
the Docker group.  However, this will reduce the security of your user.
**WARNING:** Do this at your own risk.

    usermod -a -G docker $USER
    
Other notes
-----------
* [Docker Desktop][desktop] (or other rootless docker) is not supported and
  known to have issues.
* VSCode alternatives such as VSCodium will not likely work because they tend
  to remove the extension interface.  Extensions are required.

[desktop]: https://www.docker.com/products/docker-desktop
[engine]: https://docs.docker.com/engine/install/
[ext]: https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers
