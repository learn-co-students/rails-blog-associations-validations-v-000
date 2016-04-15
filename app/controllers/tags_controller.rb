class TagsController < ApplicationController

  def new
    @tag = Tag.new
  end

private 
  def tag_params
    params.require(:tag).permit(:name)
  end 
end
