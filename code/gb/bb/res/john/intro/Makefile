SUBDIRS:=cellar chip chopper ride stove sultan target whack
all: $(SUBDIRS)
	./resall
clean: $(SUBDIRS)
	rm -f swd/* *.hi *.lo *.map *.chr *.pkg *.equ *.rgb

$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)

.PHONY: $(SUBDIRS)
