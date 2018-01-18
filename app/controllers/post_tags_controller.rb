class PostTagsController < ApplicationController
   params.require(:post).permit(:name, :content, :tag_ids => [])
end
