function sourceupdate --description 'Update open source software'

  # cmus

  cd /home/srang/Open/cmus
  git pull
  echo 'rebuild cmus?'
  if read_confirm
    sudo make
    sudo make install
  end

  # vim

  cd /home/srang/Open/vim
  hg pull
  hg update
  echo 'reconfigure vim?'
  if read_confirm
    make clean
    ./configure --with-features=huge \
                --enable-multibyte \
                --enable-pythoninterp \
                --enable-rubyinterp  \
                --enable-perlinterp \
                --enable-luainterp \
                --enable-cscope \
                --enable-gui=auto \
                --enable-gtk2-check \
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

  cd /home/srang/Open/neovim
  git pull
  echo 'rebuild neovim?'
  if read_confirm
    sudo make
    sudo make install
  end

  # fish

  cd /home/srang/Open/fish-shell
  git pull
  echo 'rebuild fish?'
  if read_confirm
    sudo make
    suod make install
  end

  # rofi

  cd /home/srang/Open/rofi
  git pull
  echo 'rebuild rofi?'
  if read_confirm
    autoreconf -i
    ./configure
    make
    sudo make install
  cd /home/srang/Open
end