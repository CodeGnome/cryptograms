# Cryptograms

[![Build Status](
    https://travis-ci.org/CodeGnome/cryptograms.svg?branch=master
)](https://travis-ci.org/CodeGnome/cryptograms)

## Copyright and Licensing

### Copyright Notice

The copyright for the software, documentation, and associated files are
held by the author.

    Copyright 2015 Todd A. Jacobs
    All rights reserved.

The AUTHORS file is also included in the source tree.

### Software License

![GPLv3 Logo](http://www.gnu.org/graphics/gplv3-88x31.png)

The software is licensed under the
[GPLv3](http://www.gnu.org/copyleft/gpl.html). The LICENSE file is
included in the source tree.

### README License

![Creative Commons BY-NC-SA
Logo](http://i.creativecommons.org/l/by-nc-sa/3.0/us/88x31.png)

This README is licensed under the [Creative Commons
Attribution-NonCommercial-ShareAlike 3.0 United States
License](http://creativecommons.org/licenses/by-nc-sa/3.0/us/).

## Purpose

Geneate cryptogram puzzles that:

- Use a pseudo-random letter substitution pattern.
- Ensures that chosen cypher key never allows a letter to substitute for
  itself.

## Installation and Setup

    gem install cryptograms

## Command-Line Usage

    cryptogram <string ...>

## Examples

No screenshots here, just samples of what you can expect to see on
your terminal when you run the program.

### Command Line

    $ cryptogram Foo bar baz. Quux?
    Cryptograms v0.1.0
    Copyright © 2015 Todd A. Jacobs
    This program is licensed under GPLv3 or later.

    ACC JGU JGQ. MBBD?

### REPL

    require 'cryptograms'
    Cryptogram.new "Foo bar baz. Quux?"
    c.cyphertext
    #=> "BCC SJE SJR. HXXD?"

----

[Project Home Page](https://github.com/CodeGnome/cryptograms)