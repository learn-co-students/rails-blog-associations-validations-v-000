class TagsController < ApplicationController
  before_action :set_tag, only: [:show, :edit, :update]
  def show 
    
  end
  
  def new 
    @tag = Tag.new
  end
  
  def create 
    @tag = Tag.new(tag_params)
    if @tag.save
      redirect_to tag_path(@tag)
    else
      render :new 
    end
  end
  
  def edit 
    
  end 
  
  def update 
    if @tag.update(tag_params)
      redirect_to tag_path(@tag)
    else
      render :edit
    end
  end
  
  private 
  
  def set_tag 
    @tag = Tag.find(params[:id])
  end
  
  def tag_params 
    params.require(:tag).permit(:name)
  end
end
