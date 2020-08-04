PREFIX = /usr
CWD = $(CURDIR)

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin/
	cp -f cp-p $(DESTDIR)$(PREFIX)/bin/
	cp -f mv-p $(DESTDIR)$(PREFIX)/bin/

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/cp-p
	rm -f $(DESTDIR)$(PREFIX)/bin/mv-p

link:
	mkdir -p $(DESTDIR)$(PREFIX)/bin/
	ln -sf $(CWD)/cp-p $(DESTDIR)$(PREFIX)/bin/
	ln -sf $(CWD)/mv-p $(DESTDIR)$(PREFIX)/bin/

.PHONY: install uninstall
