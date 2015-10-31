function convertogg
  for i in *.ogg;
    ffmpeg -i $i -acodec libmp3lame (basename $i .ogg).mp3
  end
end
