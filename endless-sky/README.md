Introduction
------------

This is the VSCode Dev Container for endless-sky.  To start developing, open
this folder with VSCode and you'll be prompted to start the Dev Container.  You
should drop into the Git repository root of [endless-sky][es].

Requirements
------------

- Linux host
- X11 display server
- PulseAudio sound system

See also the [user guide](../docs/userguide.md).

VSCode Tasks
------------

All tasks are based on endless-sky GitHub actions.  See also [how to run tasks
in VSCode][howto-tasks].

| Task name                                  | Purpose                                              |
| ------------------------------------------ | ---------------------------------------------------- |
| ES Data: Run Conversation                  | Open Endless Sky and directly run the conversation.  |
| ES Data: Insert Snippet                    | Generate an object, fleet, or snippet in a txt file. |
| Style: clang-format-13 my changes          | Reformat my changes to match clang v13 code style.   |
| Style: clang-format-13 HEAD commit only    | Reformat only your current commit.                   |
| Style: clang-format-13 endless-sky master  | Reformat my changes since endless-sky master branch. |
| Style: GitHub Action Style Checker         | Run same style check python script as GH actions.    |
| Code: Merge upstream ES master             | Update your branch with endless-sky master changes.  |
| Code: Update XCode with upstream master    | Update XCode project with added C++ classes.         |
| Build: Clean and Reset Workspace           | Removes build files                                  |
| Build: Compile Endless Sky OpenGL Desktop  | Build game                                           |
| Test: Run tests                            | Execute unit tests and report result                 |
| Test: Run benchmarks                       | Runs benchmarks on the test executable               |
| Test: Run headless integration tests       | Execute integration tests within Xvfb                |
| Package: Reset AppImage Continuous         | Reset git workspace for rebuilding AppImage.         |
| Package: AppImage Continuous               | Create an AppImage for play testing on Linux.        |
| ES Plugin: Install reveal map plugin       | Create an ES plugin for revealing map.               |

You can find defined tasks in [`.vscode/tasks.json`](.vscode/tasks.json).

[howto-tasks]: ../docs/how-to-run-tasks.md
[es]: https://github.com/endless-sky/endless-sky
