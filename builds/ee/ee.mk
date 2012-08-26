include $(TOP_DIR)/builds/ee/ee-def.mk
include $(TOP_DIR)/builds/compiler/ee-gcc.mk
include $(TOP_DIR)/builds/link_std.mk

install:
	mkdir -p $(DESTDIR)$(PS2SDK)/ports/include
	mkdir -p $(DESTDIR)$(PS2SDK)/ports/lib
	cp -f $(TOP_DIR)/objs/libfreetype.a $(DESTDIR)$(PS2SDK)/ports/lib
	cp -r $(TOP_DIR)/include/* $(DESTDIR)$(PS2SDK)/ports/include

