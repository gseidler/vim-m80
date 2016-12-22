# vim-m80

This is a simple [Vim](http://www.vim.org) plugin to highlight 8080 and Z80 assembly code based on Microsoft's MACRO-80 assembler documentation. It still has no advanced preprocessor highlighting rules but is should already do the basics like opcodes and directives keyword highlighting as well as numbers, strings and comments.

## Install
[Vundle](https://github.com/gmarik/vundle)
add the following to your vundle config:
* ```Plugin 'oraculo666/vim-m80'```
execute the following in command mode:
* ```:PluginInstall```

The plugin should automatically recognize '.mac' files.

## Screenshot
![MSX assembly code](https://i.sli.mg/YFRYLa.png)
*MSX Z80 assembly code (Molokai color scheme)*

