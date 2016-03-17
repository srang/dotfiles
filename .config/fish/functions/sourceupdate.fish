function sourceupdate --description 'Update open source software'

  # cmus

  cd $OPEN_SOURCE_HOME/cmus
  git pull
  echo 'rebuild cmus?'
  if read_confirm
    sudo make
    sudo make install
  end

  # vim

  cd $OPEN_SOURCE_HOME/vim
  git pull
  echo 'reconfigure vim?'
  if read_confirm
    make distclean
    ./configure --with-features=huge \
                --enable-multibyte \
                --enable-pythoninterp \
                --enable-rubyinterp  \
                --enable-perlinterp \
                --enable-luainterp \
                --enable-cscope \
                --enable-gui=auto \
                --enable-gtk2-check \
                --enable-gui=gtk2 \
                --enable-gnome-check \
                --with-x \
                --with-python-config-dir=/usr/lib/python2.7/config
  end
  echo 'rebuild vim?'
  if read_confirm
    sudo make
    sudo make install
  end

  # neovim

  cd $OPEN_SOURCE_HOME/neovim
  git pull
  echo 'rebuild neovim?'
  if read_confirm
    sudo make
    sudo make install
  end

  # fish

  cd $OPEN_SOURCE_HOME/fish-shell
  git pull
  echo 'rebuild fish?'
  if read_confirm
    sudo make
    sudo make install
  end

  # rofi

  cd $OPEN_SOURCE_HOME/rofi
  git pull
  echo 'rebuild rofi?'
  if read_confirm
    autoreconf -i
    ./configure
    make
    sudo make install
  end

  # i3
  cd $OPEN_SOURCE_HOME/i3
  git pull
  echo 'rebuild i3'
  if read_confirm
    make
    sudo make install
  end

  cd $OPEN_SOURCE_HOME
end