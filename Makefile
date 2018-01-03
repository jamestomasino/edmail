PREFIX ?= /usr
BINDIR ?= $(PREFIX)/bin
MANDIR ?= $(PREFIX)/share/man

install:
	@echo Installing the executable to $(DESTDIR)$(BINDIR)
	@mkdir -p    $(DESTDIR)$(BINDIR)
	@cp -f edmail   $(DESTDIR)$(BINDIR)/edmail
	@chmod 755   $(DESTDIR)$(BINDIR)/edmail
	@echo Installing the manual page to $(DESTDIR)$(MANDIR)/man1
	@mkdir -p    $(DESTDIR)$(MANDIR)
	@cp -f edmail.1 $(DESTDIR)$(MANDIR)/man1/edmail.1
	@chmod 644   $(DESTDIR)$(MANDIR)/man1/edmail.1

uninstall:
	@echo Removing the executable from $(DESTDIR)$(BINDIR)
	@rm -f $(DESTDIR)$(BINDIR)/edmail
	@echo Removing the manual page from $(DESTDIR)$(MANDIR)/man1
	@rm -f $(DESTDIR)$(BINDIR)/man1/edmail.1

.PHONY: install uninstall
