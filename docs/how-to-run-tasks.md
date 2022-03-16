Pre-defined developer tasks
---------------------------

You can have pre-defined developer tasks to help with development and testing.
Since I've been working on `scripts/autoupdate.py` recently I decided to create
a task which makes it easy to run to test its functionality.  In a local VSCode
environment you can run it too.

1. In VSCode menu, select _Terminal > Run Task_.
   ![Screenshot of menu][1-run-task]
2. Select a task to run.  For example, [`Run autoupdate.py on
   manifests`][esp-tasks].
   ![Screenshot of running task][2-autoupdate-task]
3. Choose to `Continue without scanning the task output`.  You can also scan task output for errors but currently this is unconfigured.
   ![Screenshot of menu to run without scan output][3-run-without-scan]
4. The task will run inside of the Docker container and you can view the terminal output.
   ![Screenshot of task output][4-task-output]

[1-run-task]: https://user-images.githubusercontent.com/875669/156937374-451d7e44-d238-42fd-888c-719a84d429ab.png
[2-autoupdate-task]: https://user-images.githubusercontent.com/875669/156937373-420af816-f296-4b37-b621-55586090fbc9.png
[3-run-without-scan]: https://user-images.githubusercontent.com/875669/156937372-834baa3d-44b0-4e15-9277-58721affc528.png
[4-task-output]: https://user-images.githubusercontent.com/875669/156937371-7c2428b1-ef6b-4f10-aa8a-6b5205c2b0b3.png

[esp-tasks]: ../endless-sky-plugins/README.md

