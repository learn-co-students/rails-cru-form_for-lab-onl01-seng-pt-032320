class ArtistsController < ApplicationController
    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.new(model_params(:artist, :name, :bio))
        @artist.save
        redirect_to artist_path(@artist)
    end

    def show
        @artist = Artist.find_by_id(params[:id])
    end

    def edit
        @artist = Artist.find_by_id(params[:id])
    end

    def update
        @artist = Artist.find_by_id(params[:id])
        @artist.update(model_params(:artist, :name, :bio))
        redirect_to artist_path(@artist)
    end
end