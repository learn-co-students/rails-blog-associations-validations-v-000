class TagsController < ApplicationController
<<<<<<< HEAD

  # I have to build this model out using crud
  # index, show, new, create, edit, update
  # routes, actions and views

  def index
    @tags = Tag.all
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)

    respond_to do |format|
      if @tag.save
        format.html { redirect_to @tag, notice: 'Tag was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tag }
      else
        format.html { render action: 'new' }
        format.json { render json: @tag.errors, status: :unprocessable_entity }
      end
    end
  end

  def tag_params
    params.require(:tag).permit(:name)
  end

=======
>>>>>>> a2961950387f43b355eaf3c1493907e74c840492
end
