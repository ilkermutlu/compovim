# Compovim

Composer Tools for VIM

I extracted a set of scripts I use in my daily routine and bundled them in a plugin. It it by no means a complete composer wrapper, but the functionality provided is being used by me everyday.

For a list of things I'm planning to do, see the TODO section at the end of this page.

Currently Supports:

* Install
* Update
* Require commands.

## Installation

* [vundle](https://github.com/gmarik/Vundle.vim): `Plugin 'ilkermutlu/compovim'`

## Mappings

    nnoremap <unique> <Leader>cvm :call CompovimMenu()<CR>
    nnoremap <unique> <Leader>cvmu :call CompovimUpdate()<CR>
    nnoremap <unique> <Leader>cvmr :call CompovimRequire()<CR>
    nnoremap <unique> <Leader>cvmi :call CompovimInstall()<CR>

## Usage

`<Leader>cvm` will bring up a menu to choose which composer command to run.

`<Leader>cvmu` will run `composer update`

`<Leader>cvmr` will attempt to install a composer package and add it to the local `composer.json`. Once picked, you have to enter the package name to install; something like `laravel/laravel`.

`<Leader>cvmi` will run `composer install`.

## TODO

- [  ] Add docs.
- [  ] Use flags and options.
- [  ] Check if PHP executable exists.
- [  ] Check if composer exists.
- [  ] Parse output (and may be show in a new buffer?).
- [  ] Support other composer commands.
