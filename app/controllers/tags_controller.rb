class TagsController < ApplicationController
  def index
    @tags= Tag.all
  end
  def new
    @tag= Tag.new
  end
  def create
    @tag= Tag.new(params.require(:tag).permit(:name,:post_ids => []))
    if @tag.save
      redirect_to tag_path(@tag)
    else
      render :new
    end
  end
  def edit
      @tag= Tag.find(params[:id])
  end
  def update
    @tag= Tag.find(params[:id])
    if @tag.update(params.require(:tag).permit(:name,:post_ids => []))
      redirect_to tag_path(@tag)
    else
      render :edit
    end 
  end
  def destroy
      @tag= Tag.find(params[:id]).destroy
      redirect_to tags_path
  end
end
