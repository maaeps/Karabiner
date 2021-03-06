all:
	./make-package.sh

build:
	$(MAKE) -C pkginfo
	$(MAKE) -C src
	$(MAKE) -C files/Utilities

clean:
	$(MAKE) -C pkginfo clean
	$(MAKE) -C src clean
	$(MAKE) -C files/Utilities clean

gitclean:
	git clean -f -x -d

ibtool-upgrade:
	find * -name '*.xib' | while read f; do xcrun ibtool --upgrade "$$f"; done
