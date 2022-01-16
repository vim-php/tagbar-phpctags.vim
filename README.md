tagbar-phpctags
===============

An addon plugin for [tagbar](http://majutsushi.github.com/tagbar/) using
[phpctags](https://github.com/techlivezheng/phpctags) to generate php ctags index.

This plugin provides a much better PHP syntax outline support than the orginal
ctags. Methods, properties and even local variables assigned in functions are
listed in their own scope.

Installation
------------

Using **Plug**, add to your config:

`Plug 'vim-php/phpctags', {'do': 'composer install' }`

Configuration
-------------

If you use the **composer** option above it will install `phpctags` with the
plugin's directory. Otherwise you need to have `phpctags` in your `$PATH`.

Or, the location of phpctags can be configured in vimrc as such:

    let g:tagbar_phpctags_bin='PATH_TO_phpctags'

The amount of memory that phpctags can use can be configured as such:

    let g:tagbar_phpctags_memory_limit = '512M'

The default is 128 megabytes of memory.

Acknowledgements
----------------

* [DeMarko](https://github.com/DeMarko) for memory limit support.
* [Chronial](https://github.com/Chronial) for improve the tags folding.
* [InFog](https://github.com/InFog) for maintaining the project since end of 2019.
