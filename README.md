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
* Syntax highlighting

# Install

Current development setup

- Arch Linux
- Ruby 1.9.2 (via rvm)
- swig 1.3.38 http://sourceforge.net/projects/swig/files/swigwin/swigwin-1.3.38/swigwin-1.3.38.zip/download
- wxRuby 2.0.1 (http://rubyforge.org/frs/download.php/63379/wxruby-2.0.1.tar.gz)

I will try and create a maintain an install script that will allwo you to have one command install of it

But if you want to install the components yourself


install wxgtk for your system. On arch it is

        (sudo) pacman -S wxgtk


In the rEdit/src directory unpack wigwin-1.3.38.zip

        unzip wigwin-1.3.38.zip
        cd wigwin-1.3.38
        ./configure
        make
        (sudo) make install


In the rEdit/src directory unpack wxruby-2.0.1.tar.gz

        tar -xzvf wxruby-2.0.1.tar.gz
        cd wxruby-2.0.1
        rake gem
        (sudo) gem install --local wxruby-ruby*.gem

This combination of tools work, others might as well but I am not sure
