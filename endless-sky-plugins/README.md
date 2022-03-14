How to open
-----------

Have the following repositories cloned at the same directory level:

- `endless-sky-plugins`
- `endless-sky-vscode-devcontainer`

Here's a directory listing if you have it cloned correctly:

```
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

Open the following folder in VSCode (this folder)

    endless-sky-vscode-devcontainer/endless-sky-plugins

And you will be prompted to reopen the folder in a Dev Container.  After you
open the Dev Container you'll be at the source code root of endless-sky-plugins
and you'll be able to run automation tasks against it.

Preview Markdown Docs
---------------------

You can edit Markdown with a preview.

1. Click the preview pane.
   ![Markdown preview button in upper right of VSCode][preview-button]
2. Start editing with a live side-by-side preview.
   ![View of README and markdown preview side by side][preview]

[preview-button]: https://user-images.githubusercontent.com/875669/156937376-e69ce37f-822e-463d-9103-118e3593fb5b.png
[preview]: https://user-images.githubusercontent.com/875669/156937375-2eaf01c3-87e6-48f6-b014-14178156634c.png

Pre-defined developer tasks
---------------------------

You can have pre-defined developer tasks to help with development and testing.
Since I've been working on `scripts/autoupdate.py` recently I decided to create
a task which makes it easy to run to test its functionality.  In a local VSCode
environment you can run it too.

1. In VSCode menu, select _Terminal > Run Task_.
   ![Screenshot of menu][1-run-task]
2. Select `Run autoupdate.py on manifests`.
   ![Screenshot of running task][2-autoupdate-task]
3. Choose to `Continue without scanning the task output`.  You can also scan task output for errors but currently this is unconfigured.
   ![Screenshot of menu to run without scan output][3-run-without-scan]
4. The task will run inside of the Docker container and you can view the terminal output.
   ![Screenshot of task output][4-task-output]

[1-run-task]: https://user-images.githubusercontent.com/875669/156937374-451d7e44-d238-42fd-888c-719a84d429ab.png
[2-autoupdate-task]: https://user-images.githubusercontent.com/875669/156937373-420af816-f296-4b37-b621-55586090fbc9.png
[3-run-without-scan]: https://user-images.githubusercontent.com/875669/156937372-834baa3d-44b0-4e15-9277-58721affc528.png
[4-task-output]: https://user-images.githubusercontent.com/875669/156937371-7c2428b1-ef6b-4f10-aa8a-6b5205c2b0b3.png
