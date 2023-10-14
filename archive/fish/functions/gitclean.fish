function gitclean
  echo 'Cleaning up dead leaves'
  git fetch -p 
  git branch --merged | grep -v "\*" | xargs -n 1 git branch -d
end
