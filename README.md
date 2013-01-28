`osxsub`

A command line utility for using the OS X Text Substitution System Preferences in a unix pipeline. Like `sed` but for Mac users who are taking advantage of a mostly hidden system preference.

Basic usage is like this:

    $ echo "Copyright (c) 2013 Mark Wunsch" | osxsub
      Copyright © 2013 Mark Wunsch

Text Substitutions are available for a handful of Mac applications, and can be set up by going to `System Preferences -> Language & Text` and selecting the `Text` tab.

Read more about OS X Text Substitution:

+ [_How to use text substitution in Snow Leopard_ -- Macworld](http://www.macworld.com/article/1142708/slsubstitutions.html)
+ [_Mac 101: Making Text Replacement Work_ -- TUAW](http://www.tuaw.com/2009/12/31/mac-101-making-text-replacement-work/)
+ [_Do Yourself a Favor: Set Up Mountain Lion’s Built-in Text Expansion with These Shortcuts_ -- Lifehacker](http://lifehacker.com/5931337/do-yourself-a-favor-set-up-mountain-lions-built+in-text-expansion-with-these-shortcuts)

The goals for this program are:

+ Backup your text substitution preferences, along with the ability to
+ Load new preferences, so that you can
+ Share substitution preferences across machines, and
+ Have access to them in a greater set of applications, by
+ Allowing Text Substitutions to be a part of your command line toolkit.

Some more options can be given to the tool to make managing your Preferences easy:

    $ osxsub --print
    ## Print a plist of your substition preferences

    $ osxsub --merge PATH_TO_PLIST
    ## Merge another plist into your preferences.

    $ osxsub --add REPLACE,WITH
    ## Add a new pair of substitutions (they're turned on by default).

    $ osxsub --clear
    ## Clear all your preferences.

    $ osxsub --repl
    ## Start an interactive session to test out substitutions.

## Installation

A Homebrew Formula is available, but has yet to be moved to the master Homebrew repo: https://gist.github.com/4657560

Alternatively, `osxsub` is available as a Rubygem.

    $ gem install osxsub

Or clone the repository and put the `bin` directory somewhere on your `$PATH`.

## TODO

+ Manpages
+ Documentation
+ Tests

Copyright © 2013 Mark Wunsch.
