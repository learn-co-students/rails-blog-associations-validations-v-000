class TagsController < ApplicationController
  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)
    @tag.save
  end

  private

    def tag_params
      params.require(:tag).permit(:name)
    end
end
