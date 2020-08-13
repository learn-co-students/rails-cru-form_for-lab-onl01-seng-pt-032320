class GenresController < ApplicationController
    
   
    def index
        @genre = Genre.all
    end

    def show 
        set_genre
    end

    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.new
        @genre.name = params[:genre][:name]
        redirect_to genre_path(@genre)
    end

    def edit
        set_genre
    end

    def update
        set_genre
       @genre.update(name: params[:genre][:name])
       redirect_to genre_path(@genre)
    end

    def destroy
        set_genre
        @genre.delete
    end


    private

     def set_genre
        @genre = Genre.find(params[:id])
    end

    def genre_params
		params.require(:genre).permit(:name)
	end
end
