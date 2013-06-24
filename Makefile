source := README.md \
          ChangeLog.md \
          bin/phpctags \
          plugin/tagbar-phpctags.vim

version := 0.5.1

.PHONY: all
all: bin/phpctags

.PHONY: clean
clean:
	@echo "Cleaning old build files ..."
	@rm -f bin/phpctags
	@rm -f build/tagbar-phpctags-$(version).zip
	@cd build/phpctags-$(version) && $(MAKE) clean
	@echo "Done!"

.PHONY: dist-clean
dist-clean:
	@echo "Cleaning old build files ..."
	@rm -rf bin/
	@rm -rf build/
	@echo "Done!"

.PHONY: archive
archive: build/tagbar-phpctags-$(version).zip

bin:
	@mkdir bin/

bin/phpctags: build/phpctags-$(version)/phpctags | bin
	@cp build/phpctags-$(version)/phpctags $@

build:
	@mkdir build/

build/phpctags-$(version).zip: | build
	@echo "Downloading phpctags ..."
	@curl -o $@ -s -L https://github.com/techlivezheng/phpctags/archive/v$(version).zip
	@echo "Done!"

build/phpctags-$(version): build/phpctags-$(version).zip | build
	@echo "Preparing phpctags ..."
	@cd build/ && unzip phpctags-$(version).zip
	@echo "Done!"

build/phpctags-$(version)/phpctags: | build/phpctags-$(version)
	@echo "Building phpctags ..."
	@cd build/phpctags-$(version) && $(MAKE)
	@echo "Done!"

build/tagbar-phpctags-$(version).zip: $(source)
	@echo "Building tagbar-phpctags distributable archive ..."
	@zip $@ $(source)
	@echo "Done!"
