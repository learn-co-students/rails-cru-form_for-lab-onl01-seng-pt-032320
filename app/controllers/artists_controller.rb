class ArtistsController < ApplicationController
   
    def index
        @artist = Artist.all
    end

    def show 
        set_artist
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.new
        @artist.name = params[:artist][:name]
        @artist.bio = params[:artist][:bio]
        @artist.save
        byebug
        redirect_to artist_path(@artist)
    end

    def edit
        set_artist
    end

    def update
        set_artist
       @genre.update(name: params[:artist][:name], bio: params[:artist][:bio])
       redirect_to artist_path(@artist)
    end

    def destroy
        set_artist
        @artist.delete
    end


    private

     def set_artist
        @artist = Artist.find(params[:id])
    end

    def artist_params
		params.require(:artist).permit(:name, :bio)
	end
end
