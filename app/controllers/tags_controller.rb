class TagsController < ApplicationController

  def tag_params
    params.require(:tags)
  end
end
