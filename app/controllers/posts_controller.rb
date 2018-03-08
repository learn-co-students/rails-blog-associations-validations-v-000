class PostsController < ApplicationController
    def new
        @post = Post.new
    end
    
    def create 
        @post = Post.create(post_params(:name, :content, :tag_ids))
        
        if @post.save
            redirect_to post_path(@post)
        else
            render :new
        end
    end
    
    def show
        set_post
    end
    
    
    private
    
    def post_params(*args)
        params.require(:post).permit(:name, :content, :tag_ids => [])
    end
    
    def set_post
        @post = Post.find(params[:id])
    end
end
