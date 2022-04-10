<p align=center><img alt="ES + VSCode logo" src="https://user-images.githubusercontent.com/875669/158088093-50c40a92-bee1-45dc-b740-32162cd42ce2.png" /></p>

<h1><p align=center>Endless Sky<br />VSCode Dev Containers</p></h1>

Portable development environments for the game [Endless Sky][es] and related
projects.

[es]: https://endless-sky.github.io/

Available Dev Containers
------------------------

| Dev Container               | Upstream GitHub project                        |
| --------------------------- | ---------------------------------------------- |
| [endless-sky][esc]          | [endless-sky/endless-sky][es-git]              |
| [endless-sky-plugins][espc] | [EndlessSkyCommunity/endless-sky-plugins][esp] |

[es-git]: https://github.com/endless-sky/endless-sky
[esc]: endless-sky
[esp]: https://github.com/EndlessSkyCommunity/endless-sky-plugins
[espc]: endless-sky-plugins

Features for developing Endless Sky
-----------------------------------

The following features are available in the [endless-sky devcontainer][esc].

- `F5` keyboard shortcut will create a debug build of endless-sky and launch it
  with a debugger attached.
- Run the same tasks as GitHub actions for pull requests.
- Tasks to automatically reformat your code in the same code style as the rest
  of the project (reducing review friction).
- Fetch and automatically merged upstream endless-sky `master` branch.
- Automated `TODO` list navigation.  When opening a file you'll get a list of
  all commented TODOs in code.
- Graphical Git tree to easily see your code relative to other branches in
  endless-sky.

User Guide
----------

See also the [user guide](docs/userguide.md) for additional information and
environment setup.
