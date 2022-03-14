Requirements
------------

- Linux host
- X11 display server

VSCode Tasks
------------

All tasks are based on endless-sky GitHub actions.

| Task name                                 | Purpose                                            |
| ----------------------------------------- | -------------------------------------------------- |
| Build: Compile Endless Sky OpenGL Desktop | Build game                                         |
| Build: Clean and Reset Workspace          | Removes build files<sup>1</sup>                    |
| Test: Run tests                           | Execute unit tests and report result.              |
| Test: Run benchmarks                      | Runs benchmarks on the test executable<sup>2</sup> |
| Test: Run headless integration tests      | Execute integration tests within Xvfb              |
| Package: AppImage Continuous              | Create an AppImage for running anywhere            |

> **Notes:**
> 1. Not fully complete.  Run `git clean -xfdn` for a dryrun clean.  You can run
>    `git clean -xfd` to clean for real.
> 2. `Test: Run benchmarks` task requires you to run `Test: Run tests` first.
