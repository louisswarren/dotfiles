#!/bin/sh
text="${QUTE_TITLE:-$QUTE_SELECTED_TEXT}"
notify-send -u low -a youtube "Streaming to mpv" "$text"
if_plato(`
mpv --ytdl-raw-options='format=best[height<=900]' "$QUTE_URL"
',`
mpv "$QUTE_URL"
')
