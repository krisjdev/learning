# cross compilation tasks & launch files for vscode

this folder contains pre-configured ``tasks.json`` and ``launch.json`` files that should (in theory) let you cross-compile for a target platform, whilst retaining debug capability in vscode. it is made for c/c++, but probably easily adapted for other languages.

this works by using a composite task in ``tasks.json`` called ``build-launch-remote-debugging`` that will build the executable, copy it over to the remote target using ``rsync`` and launch ``gdbserver``.

you will also need to set up ssh keys for the remote host, and install ``gdbserver`` on it.

if targeting a different architecture to the development machine, download ``gdb-multiarch`` on the dev machine, as debugging can crash when vscode attempts it.

to use these files:
1. set up ssh keys
2. download required toolchain
3. copy ``launch.json``, ``tasks.json`` and ``makefile`` into the project directory