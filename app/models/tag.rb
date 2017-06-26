class Tag < ActiveRecord::Base
<<<<<<< HEAD
  validates :name, uniqueness: true
  has_one :postTag
  has_many :posts, through: :postTag
=======
  belongs_to :post
  validates :name, presence:true, uniqueness:true
>>>>>>> master
end
