#!/usr/bin/env osascript

property nameOfTrack : ""
property nameOfAlbum : ""
property nameOfArtist : ""

tell application "iTunes"
  if it is running
    if player state is playing then
      set track_name to the name of the current track
      set artist_name to the artist of the current track
      if artist_name > 0
        "♫ " & artist_name & " - " & track_name
      else
        "~ " & track_nameif
      end
    end if
  end
end tell
