DELETE    := rm -f
CAT       := cat
SEP       := /
BUILD_DIR := $(TOP_DIR)/builds/ee
PLATFORM  := ee

LIB_DIR := $(OBJ_DIR)
LIBRARY := lib$(PROJECT)

I := -I
D := -D
L := -l
T := -o$(space)

CFLAGS ?= -c
ANSIFLAGS :=

