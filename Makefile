.PHONY: all
all: README.md xsr

.PHONY: maint
.PHONY: README.md # git doesn't care file modification dates
maint: README.md

README.md: xsr README.md.m4 markdown-preset.m4
	m4 --prefix-builtins markdown-preset.m4 \
		README.md.m4 > README.md
