class User < ActiveRecord::Base
  has_many :posts
<<<<<<< HEAD
  validates :name, presence: true, uniqueness: true

=======
  
>>>>>>> dbadbb17b404011ca68283f35106344953ab97bc
end
