CC := ee-gcc
COMPILER_SEP := /

O := o
A := a

I := -I
D := -D

L := -l

T := -o$(space)

CFLAGS ?= -D_EE -c -O2 -G0

ANSIFLAGS := -D_EE -G0 -ansi -pedantic

CLEAN_LIBRARY ?= $(DELETE) $(subst /,$(SEP),$(PROJECT_LIBRARY))
LINK_LIBRARY   = ee-ar cru $@ $(OBJECTS_LIST)

