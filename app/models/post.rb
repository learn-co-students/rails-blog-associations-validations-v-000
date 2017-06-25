class Post < ActiveRecord::Base
   belongs_to :user
   has_one :postTag
   has_many :tags, through: :postTag
   validates :name, presence: true, uniqueness: true
   validates :content, presence: true
end
