class TagsController < ApplicationController
  before_action :set_tag, only: [:show, :edit, :update, :destroy]

  def index
    @tags = Tag.all
  end

  def show
  end

  def new
    @tag = Tag.new
  end

  def edit
  end

  def create
    @tag = Tag.new(tag_params)
      if @tag.save
        redirect_to @tag
      else
        render :new
      end
  end

  def update
  end

  private
    def tag_params
      params.require(:tag).permit(:name, :content)
    end

    def set_tag
      @tag = Tag.find(params[:id])
    end
  
  end