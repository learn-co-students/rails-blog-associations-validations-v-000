class Post < ActiveRecord::Base
<<<<<<< HEAD
   belongs_to :user
   has_one :postTag
   has_many :tags, through: :postTag
   validates :name, presence: true, uniqueness: true
   validates :content, presence: true
=======
  belongs_to :user
  has_many :posttags
  has_many :tags, through: :posttags
  validates :name, presence: true, uniqueness: true
  validates :content, presence:true,uniqueness:true
>>>>>>> master
end
