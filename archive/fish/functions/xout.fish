function xout
  command xclip -o
  if read_confirm
    xclip -o | bash
  end
end
