#!/bin/bash
# bash script to echo cmus status
MESSAGE=
TITLE_LEN=28
ARTIST_LEN=10
COLOR=
CMUS=$( cmus-remote -Q 2>/dev/null )
if [ $? -eq 0 ]; then
  STATUS=$( echo "$CMUS" | grep -o 'status [^\$]\+' | cut -d " " -f 2- )
  case $STATUS in
    playing)
      STATUS='>'
      COLOR='#10F010'
      ;;
    paused)
      STATUS='='
      COLOR='#B0B020'
      ;;
    stopped)
      STATUS='(Stopped) X'
      COLOR='#F04040'
      ;;
  esac
  VOL=$( echo "$CMUS" | sed -rn 's/set vol_left ([0-9]+)/\1/p' )
  ARTIST=$( echo "$CMUS" | grep -o 'tag artist [^\$]\+' | cut -d " " -f 3- )
  TITLE=$( echo "$CMUS" | grep -o 'tag title [^\$]\+' | cut -d " " -f 3- )
  # truncate as necessary
  if [ "${#TITLE}" -gt $TITLE_LEN ]; then
    TITLE=${TITLE:0:TITLE_LEN}"..."
  fi
  # truncate as necessary
  if [ "${#ARTIST}" -gt $ARTIST_LEN ]; then
    ARTIST=${ARTIST:0:ARTIST_LEN}"..."
  fi
  if [ -z "$TITLE" ]; then
    #echo "[{\"name\":\"cmus\",\"full_text\":\"$STATUS\"},${line:1}," || exit 1
    MESSAGE="$STATUS"
    #echo "[{\"full_text\":\"$STATUS\"},${line:1}" || exit 1
    #echo $line
  else
    SECS=$(echo "$CMUS" | grep -o 'duration [^\$]\+' | cut -d ' ' -f2- )
    DUR=$(($SECS/60))":"$(printf %02d $(($SECS%60)))
    SECS=$(echo "$CMUS" | grep -o 'position [^\$]\+' | cut -d ' ' -f2- )
    POS=$(($SECS/60))":"$(printf %02d $(($SECS%60)))
    if [ -z "$ARTIST" ]; then
      #echo "[{\"name\":\"cmus\",\"full_text\":\"$TITLE $POS $STATUS $DUR\"},${line:1}," || exit 1
      MESSAGE="$TITLE $POS $STATUS $DUR ($VOL%)"
      #echo "[{\"full_text\":\"$TITLE $POS $STATUS $DUR\"},${line:1}" || exit 1
    else
      MESSAGE="$TITLE $POS $STATUS $DUR ($VOL%)"
      #echo "[{\"full_text\":\"$TITLE $POS $STATUS $DUR\"},${line:1}" || exit 1
      #echo "$ARTIST - $TITLE $POS $STATUS $DUR | $line" || exit 1
    fi
  fi
  echo "{\"name\":\"cmus\",\"color\":\"$COLOR\",\"full_text\":\"$MESSAGE\"}"
fi
