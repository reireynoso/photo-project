class PhotosController < ApplicationController
    def index
        @photos = Photo.all
        render json: @photos
    end

    def most_liked
        @photos = Photo.most_likes
        render json: @photos
    end

    def new
        @photo = Photo.new
    end

    def create
        @genre = Genre.find(params["genre"])   
        @photo = Photo.create(check_params.merge(genre: @genre))
        render json: @photo
    end

    def show 
        @photo = Photo.find(params[:id])
        render json: @photo
    end

    def update 
        
        @photo = Photo.find(params[:id]);   
        @photo.update(check_params)
        # byebug
        render json: @photo
    end

    def destroy
        Photo.delete(params[:id])
    end

    private 

    def check_params
        params.require(:photo).permit(:title, :description, :genre, :likes, :image, :owner_name)
    end

end
