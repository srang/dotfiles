function gitclip
  echo 'clone repository?'
  command xclip -o
  if read_confirm
    echo 'cloning this repository...'
    xclip -o | xargs git clone
  end
end
