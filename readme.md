# CTemplate 

**What this repo is about :**
This is just a template structure for how a well organised C project should be (from standard perspective) and this will help when the programs become larger in size. We should have some prerequisites covered here - knowledge about the C compiler, and Makefile and make system. (Which we will be learning here.)

**Standard Structure of the Project**

```txt 
CTemplate/
├── Makefile    # make build instructions for the project 
├── LICENSE     # license for the project 
├── readme.md   # readme for the project 
├── PKGBUILD    # if you were an arch user.
├── writeups/   # folder for giving explanations for files/writeups (optional)
├── include/    # include directory for header files. 
│   └── math_utils.h
├── src/        # source directory for c source files. 
│   ├── main.c  # main c file 
│   └── math_utils.c
└── obj/        # This folder will be created and deleted automatically
    ├── main.o
    └── math_utils.o
```


