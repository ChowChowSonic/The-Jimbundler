# The-Jimbundler
If you prefer to just use the deployment system rather than making changes, `./jimbundler` is the file you're looking for

The commands for this deployment system are
```
jimbundler add <FILE1> <FILE2> <FILE3> ...
//similar to `git add`

jimbundler pack <VERSION>
//similar to `git commit`

jimbundler dep <LOCAL_FILE> <REMOTE_FILE_DIR> <USER>@<IP_ADDR>
//similar to `git push`, copies and unpacks a package onto a remote device

jimbundler mark
//changes a package name from NEW_<version>.jimbundle to BAD_<version>.jimbundle

jimbundler rollback <USER>@<IP_ADDR> <REMOTE_LOCATION>
//Rolls back a remote dedployment to the version before the last deployment

jimbundler rb
//jimbundler rollback localhost@127.0.0.1 ./

```
## Editing the Jimbundler
To make edits to the jimbundler, you'll first need the Jimbo programming language. <br>
A copy of the compiler is included with the repository, under `./jimbo`; simply run `./jimbo main.jmb 2> jmb.ll ; llvm-linker jmb.ll -o ./jimbundler` to recompile the project. <br>
You will also need to have LLVM on your machine to recompile it. <br>

If for whatever reason you choose not to use the included version of Jimbo, the newest version can be downloaded and installed from: 
https://github.com/ChowChowSonic/The-Jimpiler

WARNING: THE NEWEST VERSION OF JIMBO IS WILDLY DIFFERENT FROM THE INCLUDED VERSION; THIS WILL BREAK THE EXISTING CODE. 
