class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(name: params[:tag][:name])
    if @tag.save
      redirect_to tag_path(@tag)
    else
      render :new
    end
  end

  def show
    set_tag
  end

  def edit
    set_tag
  end

  def update
    set_tag
    @tag.update(name: params[:tag][:name])
    if @tag.valid?
      redirect_to tag_path(@tag)
    else
      render :edit
    end
  end

  def destroy
    set_tag
    @tag.destroy
    redirect_to tags_path
  end

  private

  def set_tag
    @tag = Tag.find(params[:id])
  end

end
