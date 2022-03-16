Introduction
------------

This is the VSCode Dev Container for endless-sky.  To start developing, open
this folder with VSCode and you'll be prompted to start the Dev Container.  You
should drop into the Git repository root of [endless-sky][es].

Requirements
------------

- Linux host
- X11 display server

See also the [user guide](../docs/userguide.md).

VSCode Tasks
------------

All tasks are based on endless-sky GitHub actions.  See also [how to run tasks
in VSCode][howto-tasks].

| Task name                                 | Purpose                                            |
| ----------------------------------------- | -------------------------------------------------- |
| Build: Compile Endless Sky OpenGL Desktop | Build game                                         |
| Build: Clean and Reset Workspace          | Removes build files<sup>1</sup>                    |
| Test: Run tests                           | Execute unit tests and report result               |
| Test: Run benchmarks                      | Runs benchmarks on the test executable<sup>2</sup> |
| Test: Run headless integration tests      | Execute integration tests within Xvfb<sup>3</sup>  |
| Package: AppImage Continuous              | Create an AppImage for running anywhere            |

> **Notes:**
> 1. Not fully complete.  Run `git clean -xfdn` for a dryrun clean.  You can run
>    `git clean -xfd` to clean for real.
> 2. `Test: Run benchmarks` task requires you to run `Test: Run tests` first.
> 3. `Test: Run headless integration tests` requires you to run `Build: Compile
>    Endless Sky OpenGL Desktop` first.

You can find defined tasks in [`.vscode/tasks.json`](.vscode/tasks.json).

[howto-tasks]: ../docs/how-to-run-tasks.md
[es]: https://github.com/endless-sky/endless-sky
