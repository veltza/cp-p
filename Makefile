PREFIX    = /usr/local
BINPREFIX = $(DESTDIR)$(PREFIX)/bin
CWD       = $(CURDIR)

install:
	mkdir -p $(BINPREFIX)
	cp -f cp-p $(BINPREFIX)/
	cp -f mv-p $(BINPREFIX)/

uninstall:
	rm -f $(BINPREFIX)/cp-p
	rm -f $(BINPREFIX)/mv-p

link:
	mkdir -p $(BINPREFIX)
	ln -sf $(CWD)/cp-p $(BINPREFIX)/
	ln -sf $(CWD)/mv-p $(BINPREFIX)/

.PHONY: install uninstall link
