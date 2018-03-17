class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    set_tag
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.create(tag_params)
    if @tag.valid?
      redirect_to tags_path
    else
      render :new
    end
  end

  def edit
    set_tag
  end

  def update
    set_tag.update(tag_params)
    if @tag.valid?
      redirect_to tags_path
    else
      render :edit
    end
  end

  def destroy
    set_tag.destroy
    redirect_to tags_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag
      @tag = Tag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tag_params
      params.require(:tag).permit(:name)
    end

end
