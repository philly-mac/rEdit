#!/bin/bash

sudo apt-get install wx2.8-headers wx2.8-i18n libwxgtk2.8-dev libwxgtk2.8-0 libwxbase2.8-dev libwxbase2.8-0

[[ ! -d "tmp" ]] && mkdir tmp
cd tmp
if [[ ! -e "swigwin-1.3.38.zip" ]]; then
  wget http://sourceforge.net/projects/swig/files/swigwin/swigwin-1.3.38/swigwin-1.3.38.zip/download
  mv download swigwin-1.3.38.zip
fi

[[ ! -d "swigwin-1.3.38" ]] && unzip swigwin-1.3.38

cd swigwin-1.3.38

./configure && make && sudo make install
cd ..

if [[ ! -e "wxruby-2.0.1.tar.gz" ]];
  wget http://rubyforge.org/frs/download.php/63379/wxruby-2.0.1.tar.gz
fi

[[ ! -d "wxruby-2.0.1" ]] && tar -xzf wxruby-2.0.1.tar.gz

cd wxruby-2.0.1

rake gem
gem install --local wxruby-ruby19-2.0.1-x86-linux.gem

echo "Build done"
