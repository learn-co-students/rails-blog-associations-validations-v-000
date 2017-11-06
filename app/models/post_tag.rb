class PostTag < ActiveRecord::Base
  #note: singular
  belongs_to :tag
  belongs_to :post
end
