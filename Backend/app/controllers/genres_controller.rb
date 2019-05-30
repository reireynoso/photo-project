class GenresController < ApplicationController
    def index 
        @genres = Genre.all
        render json: @genres 
    end

    def create 

    end
    
    def show 
        @genre = Genre.find(params[:id])
        render json: @genre
    end

    private 

    # def check_params
    #     params.require()
    # end
end
