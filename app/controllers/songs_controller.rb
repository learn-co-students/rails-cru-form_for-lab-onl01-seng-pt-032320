class SongsController < ApplicationController
    
   
    def index
        @songs = Songs.all
    end

    def show 
        set_song
        @artist = Artist.find(@song.artist_id)
        @genre = Artist.find(@song.genre_id)
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.new
        @song.name = params[:song][:name]
        if params[:song][:artist_id]
            @song.artist_id = params[:song][:artist_id]
        end
        if params[:song][:genre_id]
            @song.genre = params[:song][:genre_id]
        end
        redirect_to song_path(@song)
    end

    def edit
        set_song
    end

    def update
        set_song
       @song.update(name: params[:song][:name])
       redirect_to song_path(@song)
    end

    def destroy
        set_song
        @song.delete
    end


    private

     def set_song
        @song = Song.find(params[:id])
    end

    def song_params
		params.require(:song).permit(:name)
	end
end
