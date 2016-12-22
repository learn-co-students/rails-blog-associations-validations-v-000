class Post < ActiveRecord::Base
  belongs_to :user
  validates :name, :content, presence: true

end
