class ArtistsController < ApplicationController
    before_action :set_artist, only: [:show, :edit, :update]
    
    def index
        @artists = Artist.all
    end

    def show
    end

    def new
        @artist = Artist.new
    end

    def create
    end

    def edit
    end

    def update
    end

    private

    def set_artist
        @artist = Artist.find(params[:id])
    end

    def artist_params(*args)
        params.require(:artist).permit(*args)
    end

end
