class TagsController < ApplicationController
  def index
    @tags = Tag.find(params[:id])
  end
  def show
    @tag = Tag.find(params[:id])
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
  def new
    @tag = Tag.new
  end
  def edit
    @tag = Tag.find(tag_params)
  end
  def update
     respond_to do |format|
       if @tag.update(tag_params)
         format.html { redirect_to @tag, notice: 'Tag was successfully updated.' }
         format.json { head :no_content }
       else
         format.html { render action: 'edit' }
         format.json { render json: @tag.errors, status: :unprocessable_entity }
       end
     end
   end
   def destroy
   @tag.destroy
   respond_to do |format|
     format.html { redirect_to tags_url }
     format.json { head :no_content }
   end
 end

  private
    def tag_params
      params.require(:tag).permit(:name)
    end

end
