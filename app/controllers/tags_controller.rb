class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def new
    @tag = Tag.find_by(id: tag_params)
  end

  def create
    @tag = Tag.find_by(id: tag_params)
    if @tag.save
      redirect_to tag_path(@tag)
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  private

    def tag_params
      params.require(:tag).permit(:name)
    end
end
