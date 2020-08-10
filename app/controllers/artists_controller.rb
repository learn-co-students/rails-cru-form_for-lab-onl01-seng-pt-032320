class ArtistsController < ApplicationController
    
    before_action :get_artist, only: [:show, :update, :edit]
    before_action :new_artist, only: [:new]

    def new
    end
    
    def create
        @artist = Artist.create(artist_params)
        redirect_to artist_path(@artist)
    end
    
    def show
    end
    
    def edit
    end
    
    def update
        @artist.update(artist_params)
        redirect_to artist_path(@artist)
    end
    
    private
    
    def artist_params
        params.require(:artist).permit(:name, :bio)
    end

    def get_artist
        @artist = Artist.find(params[:id])
    end

    def new_artist
        @artist = Artist.new
    end
    
end
