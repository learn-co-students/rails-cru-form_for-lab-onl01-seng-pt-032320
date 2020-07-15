class ArtistsController < ApplicationController


def new
end

def create
    @artist = Artist.new
    @artist.name = params[:name]
    @artist.bio = params[:bio]
    @artist.save
    redirect_to artist_path(@artist)
end

def show
    
end
end
