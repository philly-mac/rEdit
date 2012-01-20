#!/bin/bash

sudo pacman -S wxgtk

cd src

[[ ! -d "swigwin-1.3.38" ]] && unzip swigwin-1.3.38

cd swigwin-1.3.38

./configure && make && sudo make install

cd ..

[[ ! -d "wxruby-2.0.1" ]] && tar -xzf wxruby-2.0.1.tar.gz

cd wxruby-2.0.1

echo "This may take a while.."

rake gem
cp src/wxruby-2.0.1/wxruby-ruby19-2.0.1-x86_64-linux.gem vendor/cache/

echo "Build done"
