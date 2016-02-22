User
  name:string

Tag
  name:string
  
  has_many :posts, through: :post_tags
  has_many :post_tags

Join table.  Post_Tags
  belongs_to :user
  belongs_to :tag

  user_id:integer
  tag_id:integer



Post
  as_many :tags, through: :post_tags
  has_many :post_tags

