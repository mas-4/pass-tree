# pass-tree
A plugin for [Pass: The Standard Unix Password Manager][0].

## Usage
`pass tree [n] [options] [pass-directory]`

The first parameter is a number that specifies the depth for `tree`. Default is
1 level.

The second parameter is a pass-style directory. That is to say, just like with
pass by default, `pass tree <directory>` will list the contents of the directory
within `.password-store`. The default is the top level directory.

Other than those two parameters, it seems that all of `tree`'s options work,
provided they come in the middle.

The output conforms to the same output style as the default call of `pass`.

## Installation
Clone the repo `git clone https://github.com/malan88/pass-tree`, and copy the
file `tree.bash` to the directory `.password-store/extensions`. That is
literally it.

## Explanation
I like `pass`, but the default use of `tree` in calling the naked `pass` command
is to display the directory tree completely. For large `pass` directories, this
can be overwhelming. I found that there was no way to specify the level without
making an extension.

## Disclaimer
I am not a particularly proficient BASH programmer. I pieced this thing together
through Googling, StackOverflow, a BASH cheatsheet, and my limited knowledge of
BASH syntax. If something is broken, or there is some kind of vulnerability, I
am not responsible. You have been warned. The code is short, you can read it
yourself. If you have anything to contribute to it, open a PR. I assure you, I
will consider it (and will probably see little reason not to merge it,
depending, obviously).

[0]: https://www.passwordstore.org/
