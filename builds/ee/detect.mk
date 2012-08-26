.PHONY: setup install

ifeq ($(PLATFORM),ansi)

  ifdef PS2SDK
    PLATFORM    := ee
  endif

endif

ifeq ($(PLATFORM),ee)

  DELETE      := rm -f
  CAT         := cat
  SEP         := /
  BUILD_DIR   := $(TOP_DIR)/builds/ee
  CONFIG_FILE := ee.mk

  ifeq ($(firstword $(CC)),cc)
    CC := ee-gcc
  endif

  setup: std_setup

  install:
	mkdir -p $(DESTDIR)$(PS2SDK)/ports/include
	mkdir -p $(DESTDIR)$(PS2SDK)/ports/lib
	cp -f $(TOP_DIR)/objs/libfreetype.a $(DESTDIR)$(PS2SDK)/ports/lib
	cp -rv $(TOP_DIR)/include/* $(DESTDIR)$(PS2SDK)/ports/include

endif

