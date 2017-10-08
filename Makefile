ebuild:=xsr-1.0.0.ebuild

.PHONY: all
all: install uninstall

Manifest: $(ebuild)
	ebuild $< manifest

.PHONY: install
install: $(ebuild) Manifest
	sudo ebuild $< merge

.PHONY: uninstall
uninstall: $(ebuild) Manifest
	sudo ebuild $< unmerge
