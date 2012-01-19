rEdit aims to be a very simple text editor written in ruby/wxruby.

# My Motivation

I am tired of using editors that have bugs, and not being able/wanting to try to fix them because they are written in something other than ruby.
I use Linux, not Mac, not Windows, not anything else. I don't care about other OSs.
And I have a basic set of things that I feel I need to be develop ruby in, I just want these to work well and work all the time.
And when they don't I want to be able to fix them, in ruby.

# Road to 1.0

To achieve 1.0 status there will not be a lot of requirements.

* Open
* Save
* Save as
* Undo
* Redo
* Cut
* Copy
* Paste
* Smart home button
* Block indent
* Show non printing charaters
* Projects Window (This will be just showing of a root directory and everything under it)
* Search Document
* Search through project
* Recent file switcher
* Go to file
* Auto refresh project tree
* Snippets
* Vertical select/edit

If you notice I didn't put syntax highlighting, because while it is nice and actually quite important, it is also complex. At least I think so.
So I shall not put this on the list of things to reach 1.0 status

The plan is that once these very basic set of requirements have been achieved more ambitious things can be attempted. Like the syntax highlighting.

# Install

Current development setup

- ubuntu 10.04
- Ruby 1.9.2 (via rvm)
- swig 1.3.38 http://sourceforge.net/projects/swig/files/swigwin/swigwin-1.3.38/swigwin-1.3.38.zip/download
- wxRuby 2.0.1 (http://rubyforge.org/frs/download.php/63379/wxruby-2.0.1.tar.gz)

Unfortunately you will need to compile swig and wxruby (in that order) by hand, if you are on ubuntu
9.10 or above. wxRuby gem will not work with the wxWidgets from the repo.

Once swig is compiled and installed from the root of the unpacked source
    ./configure
    make
    (sudo) make install

You can compile a wxRuby gem from the root of the unpacked source
    rake gem

And this you can install gem
    (sudo) gem install --local wxruby-ruby*.gem

This combination of tools work, others might as well but I am not sure