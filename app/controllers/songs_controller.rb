class SongsController < ApplicationController

    before_action :get_song, only: [:show, :update, :edit]
    before_action :new_song, only: [:new]

    def index
        @songs = Song.all
    end

    def new
    end
    
    def create
        @song = Song.create(song_params)
        redirect_to song_path(@song)
    end
    
    def show
    end
    
    def edit
    end
    
    def update
        @song.update(song_params)
        redirect_to song_path(@song)
    end
    
    private
    
    def song_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end

    def get_song
        @song = Song.find(params[:id])
    end

    def new_song
        @song = Song.new
    end

end
