class GenresController < ApplicationController

    before_action :get_genre, only: [:show, :update, :edit]
    before_action :new_genre, only: [:new]

    def new
    end
    
    def create
        @genre = Genre.create(genre_params)
        redirect_to genre_path(@genre)
    end
    
    def show
    end
    
    def edit
    end
    
    def update
        @genre.update(genre_params)
        redirect_to genre_path(@genre)
    end
    
    private
    
    def genre_params
        params.require(:genre).permit(:name)
    end

    def get_genre
        @genre = Genre.find(params[:id])
    end

    def new_genre
        @genre = Genre.new
    end
    
end
