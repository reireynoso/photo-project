class CommentsController < ApplicationController
    
    def index 
        @comments = Comment.all
        render json: @comments
    end
    
    def new 
        @comment = Comment.new
    end

    def create 
        #byebug
        @photo = Photo.find(params[:photo])
        @comment = Comment.create(check_params.merge(photo: @photo))
        render json: @comment
    end

    private 

    def check_params
        params.require(:comment).permit(:content, :owner_name, :photo)
    end

end
