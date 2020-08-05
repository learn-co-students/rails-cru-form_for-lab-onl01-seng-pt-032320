class SongsController < ApplicationController
    def show 
        @song = Song.find_by_id(params[:id]
    end 

    def create 
        @song = Song.new(post_params(:name))
        @song.save 
        redirect_to song_path(@song)
    end 

    def update 
        @song = Song.find(params[:id])
        @song.update(post_params(:name))
        redirect_to song_path(@song)
    end 

    private 
    
    def post_params(*args)
        params.require(:song).permit(*args)
    end 
end
