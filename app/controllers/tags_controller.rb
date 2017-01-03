class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def create
    @tag = Tag.new(params.require(:tag).permit(:name))
    if @tag.save
      redirect_to tags_path
    else
      render :new
    end
  end

  def new
    @tag = Tag.new
  end

  def destroy
    @tag = Tag.find_by(params[:id])
    if !@tag.nil?
      @tag.destroy
    end
    redirect_to tags_path
  end


end
