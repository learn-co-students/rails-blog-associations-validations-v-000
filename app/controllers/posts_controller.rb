class PostsController < ApplicationController

  def index
		@posts = Post.all
	end

	def show
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.create(post_params(:name, :content))
    if @post.errors.full_messages.size > 0
      render :new
    else
      redirect_to post_path(@post)
    end
	end

	def edit
	end

	def update
		@post = Post.find(params[:id])
	  @post.update(post_params(:name, :content))
    if @post.errors.full_messages.size > 0
      render :edit
    else
      redirect_to post_path(@post)
    end
	end

  def destroy
    Post.find(params[:id]).destroy
    redirect_to posts_url
  end

	private

  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:id])
  end

	def post_params(*args)
		params.require(:post).permit(*args)
	end

end
