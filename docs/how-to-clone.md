How to open
-----------

Have the following repositories cloned at the same directory level:

- [`endless-sky`][es-git]
- [`endless-sky-plugins`][esp]
- `endless-sky-vscode-devcontainer` (this repository)

The following directory tree shows a proper clone of all projects within the
same directory.

```
endless-sky
├── changelog
├── CONTRIBUTING.md
├── copyright
├── credits.txt
├── data
├── endless-sky.6
├── endless-sky.appdata.xml
├── EndlessSky.cbp
├── endless-sky.desktop
├── EndlessSkyLib.cbp
├── EndlessSkyTests.cbp
├── EndlessSky.workspace
├── EndlessSky.xcodeproj
├── icon.png
├── icons
├── images
├── keys.txt
├── license.txt
├── readme-developer.md
├── README.md
├── SConstruct
├── sounds
├── source
├── tests
├── utils
└── XCode

endless-sky-plugins
├── generated
├── .git
├── .github
├── LICENSE
├── manifests
├── README.md
├── scripts
└── .yamllint.yaml

endless-sky-vscode-devcontainer
└── endless-sky-plugins
    ├── .devcontainer
    ├── .gitignore
    ├── README.md
    └── .vscode
```

# Open VSCode

Open one of the following folders in VSCode.

* `endless-sky-vscode-devcontainer/endless-sky`
* `endless-sky-vscode-devcontainer/endless-sky-plugins`

And you will be prompted to reopen the folder in a Dev Container.  After you
open the Dev Container you'll be at the source code root of the upstream Git
repository.  You'll be able to run [automation](how-to-run-tasks.md) tasks
against it.

[es-git]: https://github.com/endless-sky/endless-sky
[esp]: https://github.com/EndlessSkyCommunity/endless-sky-plugins
