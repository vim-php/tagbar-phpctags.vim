tagbar-phpctags
===============

An addon plugin for [tagbar](http://majutsushi.github.com/tagbar/) using
[phpctags](https://github.com/techlivezheng/phpctags) to generate php ctags index.

Provide a much better PHP syntax outline support than the orginal ctags. Methods
and properties even local variables assigned in functions are list in their own scope.

Installation
------------

If you are using the distributed archive from vim.org, a phpctags executable
has been included, nothing to do.

If you are using the plain source from the repository, then phpctags needs to
be built first. On \*nix platforms, just run `make` will do. For other
platforms, especially Windows, please help yourself out.

Configuration
-------------

Location of phpctags should be in system '$PATH' environment variable.

Or, the location of phpctags can be configured in vimrc as such:

    let g:tagbar_phpctags_bin='PATH_TO_phpctags'

The amount of memory that phpctags can use can be configured as such:

    let g:tagbar_phpctags_memory_limit = '512M'

The default is 128 megabytes of memory.

Acknowledgements
----------------

* [DeMarko](https://github.com/DeMarko) for memory limit support.
* [Chronial](https://github.com/Chronial) for improve the tags folding.
