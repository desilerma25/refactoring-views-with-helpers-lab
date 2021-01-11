module ArtistsHelper

    def display_artist(song)
        if song.artist && song.artist.name !="" # if song artist and song artist name do NOT eq nil
            link_to song.artist.name, artist_path(song.artist) # link song artist name 
        else #otherwise
            link_to "Add Artist", edit_song_path(song) # link back to edit artist
        end
    end
end
