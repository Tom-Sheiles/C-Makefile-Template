# C Makefile Example

Standard template makefile layout for a simple C project.

Compiles all c files located in the src directory into objects files located in the Interm directory.

These object files are then linked into the final binary in the Builds directory.

<br>
---
## Make Commands:

- <b>all</b> - builds all files in release with no debug flags
- <b>debug</b> - builds all files with #DEBUG definition
- <b>clean</b> - removes all files in the Builds and Interm directories
- <b>init</b> - makes both the Build and Interm directories.