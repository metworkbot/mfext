include ../../../adm/root.mk
include ../../package.mk

export NAME=vim
export VERSION=8.0.069
export EXTENSION=tar.bz2
export CHECKTYPE=MD5
export CHECKSUM=457543a7754b0d3c1c0aa4d4c3bb4070
DESCRIPTION=\
VIM est un editeur de texte unix
WEBSITE=http://www.vim.org
LICENSE=GPL
SHORT_VERSION=80

all:: $(PREFIX)/bin/vim
$(PREFIX)/bin/vim:
	$(MAKE) --file=../../Makefile.standard EXPLICIT_NAME=vim$(SHORT_VERSION) PREFIX=$(PREFIX) OPTIONS="--enable-gui=no --with-local-dir=$(PREFIX) --with-python3-config-dir=$(PREFIX)/../python3_core/lib/python$(PYTHON3_SHORT_VERSION)/config-$(PYTHON3_SHORT_VERSION)m --enable-python3interp=dynamic --enable-multibyte --with-features=huge --enable-cscope" download uncompress configure build install
